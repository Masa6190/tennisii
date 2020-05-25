class PostsController < ApplicationController
  before_action :move_to_root, only: [:new]

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
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post.id), notice: "編集しました"
    else
      redirect_to edit_post_path, alert: "編集できません。入力必須項目を確認してください"
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :main, :Prefecture, :place, :person, :starttime, :money,user_id: current_user.id).merge(user_id: current_user.id) 
  end

  private

  def move_to_root
    if user_signed_in?
    else
      flash[:alert] = "募集するににはユーザー登録が必要です"
      redirect_to root_path
    end
  end

end
