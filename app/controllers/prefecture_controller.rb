class PrefectureController < ApplicationController
  def index
  end

  def tokyo
    @post = Post.where(prefecture: "東京都").order("id DESC")
    @prefecture = "東京"
    render action: :show
  end

end
