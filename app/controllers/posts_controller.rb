class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]
  before_action :move_to_root, only: [:new]
  before_action :correct_user, only: [:edit, :update]

  def index
    @posts = Post.all.order("id DESC")
  end

  def new
   @post = Post.new
  end

  def create
    @post =Post.new(post_params)
    if @post.save
      flash[:notice] = '募集開始しました'
      redirect_to posts_path
    else
      flash.now[:alert] = '入力されていない箇所があります'
      render 'new'
    end
  end

  def show
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post.id), notice: "編集しました"
    else
      redirect_to edit_post_path, alert: "編集できません。入力必須項目を確認してください"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path, alert: "削除しました"
  end

  def search
    @posts = Post.search(params[:search]).order(id: "DESC")
    @searchtext = params[:search]
  end

  def showcomments
    if user_signed_in?
      @user = current_user.id
      comments_post = Comment.where(user_id: "#{@user}").pluck(:post_id)
      @posts = Post.where(id: comments_post )
    else
      redirect_to root_path, alert: "ログインしてください"
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :main, :Prefecture, :place, :person, :starttime, :money,user_id: current_user.id).merge(user_id: current_user.id) 
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_root
    if user_signed_in?
    else
      flash[:alert] = "募集するににはユーザー登録が必要です"
      redirect_to root_path
    end
  end

  def correct_user
    if current_user.id !=  @post.user_id
     redirect_to root_path
    end
  end

end
