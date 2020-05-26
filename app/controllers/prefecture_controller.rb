class PrefectureController < ApplicationController
  def index
  end

  def tokyo
    @post = Post.where(prefecture: "東京都")
    render action: :show
  end

end
