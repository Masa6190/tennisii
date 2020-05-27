class PrefectureController < ApplicationController
  def index
  end

  def hokkaido
    @post = Post.where(prefecture: "北海道").order("id DESC")
    @prefecture = "北海道"
    render action: :show
  end

  def aomori
    @post = Post.where(prefecture: "青森県").order("id DESC")
    @prefecture = "青森県"
    render action: :show
  end
  
  def iwate
    @post = Post.where(prefecture: "岩手県").order("id DESC")
    @prefecture = "岩手県"
    render action: :show
  end

  def miyagi
    @post = Post.where(prefecture: "宮城県").order("id DESC")
    @prefecture = "宮城県"
    render action: :show
  end

  def akita
    @post = Post.where(prefecture: "秋田県").order("id DESC")
    @prefecture = "秋田県"
    render action: :show
  end

  def yamagata
    @post = Post.where(prefecture: "山形県").order("id DESC")
    @prefecture = "山形県"
    render action: :show
  end

  def fukushima
    @post = Post.where(prefecture: "福島県").order("id DESC")
    @prefecture = "福島県"
    render action: :show
  end

  def ibaraki
    @post = Post.where(prefecture: "茨城県").order("id DESC")
    @prefecture = "茨城県"
    render action: :show
  end

  def tochigi
    @post = Post.where(prefecture: "栃木県").order("id DESC")
    @prefecture = "栃木県"
    render action: :show
  end

  def gunma
    @post = Post.where(prefecture: "群馬県").order("id DESC")
    @prefecture = "群馬県"
    render action: :show
  end

  def saitama
    @post = Post.where(prefecture: "埼玉県").order("id DESC")
    @prefecture = "埼玉県"
    render action: :show
  end

  def chiba
    @post = Post.where(prefecture: "千葉県").order("id DESC")
    @prefecture = "千葉県"
    render action: :show
  end

  def tokyo
    @post = Post.where(prefecture: "東京都").order("id DESC")
    @prefecture = "東京都"
    render action: :show
  end

  def kanagawa
    @post = Post.where(prefecture: "神奈川県").order("id DESC")
    @prefecture = "神奈川県"
    render action: :show
  end

  def niigata
    @post = Post.where(prefecture: "新潟県").order("id DESC")
    @prefecture = "新潟県"
    render action: :show
  end

  def toyama
    @post = Post.where(prefecture: "富山県").order("id DESC")
    @prefecture = "富山県"
    render action: :show
  end

  def ishikawa
    @post = Post.where(prefecture: "石川県").order("id DESC")
    @prefecture = "石川県"
    render action: :show
  end

  def fukui
    @post = Post.where(prefecture: "福井県").order("id DESC")
    @prefecture = "福井県"
    render action: :show
  end

  def yamanashi
    @post = Post.where(prefecture: "山梨県").order("id DESC")
    @prefecture = "山梨県"
    render action: :show
  end

  def nagano
    @post = Post.where(prefecture: "長野県").order("id DESC")
    @prefecture = "長野県"
    render action: :show
  end

  def gifu
    @post = Post.where(prefecture: "岐阜県").order("id DESC")
    @prefecture = "岐阜県"
    render action: :show
  end

  def shizuoka
    @post = Post.where(prefecture: "静岡県").order("id DESC")
    @prefecture = "静岡県"
    render action: :show
  end

  def aichi
    @post = Post.where(prefecture: "愛知県").order("id DESC")
    @prefecture = "愛知県"
    render action: :show
  end

  def mie
    @post = Post.where(prefecture: "三重県").order("id DESC")
    @prefecture = "三重県"
    render action: :show
  end

  def shiga
    @post = Post.where(prefecture: "滋賀県").order("id DESC")
    @prefecture = "滋賀県"
    render action: :show
  end

  def kyoto
    @post = Post.where(prefecture: "京都府").order("id DESC")
    @prefecture = "京都府"
    render action: :show
  end

  def osaka	
    @post = Post.where(prefecture: "大阪府").order("id DESC")
    @prefecture = "大阪府"
    render action: :show
  end

  def hyogo
    @post = Post.where(prefecture: "兵庫県").order("id DESC")
    @prefecture = "兵庫県"
    render action: :show
  end

  def nara
    @post = Post.where(prefecture: "奈良県").order("id DESC")
    @prefecture = "奈良県"
    render action: :show
  end

  def wakayama
    @post = Post.where(prefecture: "和歌山県").order("id DESC")
    @prefecture = "和歌山県"
    render action: :show
  end

  def tottori
    @post = Post.where(prefecture: "鳥取県").order("id DESC")
    @prefecture = "鳥取県"
    render action: :show
  end

  def shimane
    @post = Post.where(prefecture: "島根県").order("id DESC")
    @prefecture = "島根県"
    render action: :show
  end

  def okayama
    @post = Post.where(prefecture: "岡山県").order("id DESC")
    @prefecture = "岡山県"
    render action: :show
  end

  def hiroshima
    @post = Post.where(prefecture: "広島県").order("id DESC")
    @prefecture = "広島県"
    render action: :show
  end

  def yamaguchi
    @post = Post.where(prefecture: "山口県").order("id DESC")
    @prefecture = "山口県"
    render action: :show
  end

  def tokushima
    @post = Post.where(prefecture: "徳島県").order("id DESC")
    @prefecture = "徳島県"
    render action: :show
  end

  def kagawa
    @post = Post.where(prefecture: "香川県").order("id DESC")
    @prefecture = "香川県"
    render action: :show
  end

  def ehime
    @post = Post.where(prefecture: "愛媛県").order("id DESC")
    @prefecture = "愛媛県"
    render action: :show
  end

  def kochi
    @post = Post.where(prefecture: "高知県").order("id DESC")
    @prefecture = "高知県"
    render action: :show
  end

  def fukuoka
    @post = Post.where(prefecture: "福岡県").order("id DESC")
    @prefecture = "福岡県"
    render action: :show
  end

  def saga
    @post = Post.where(prefecture: "佐賀県").order("id DESC")
    @prefecture = "佐賀県"
    render action: :show
  end

  def nagasaki
    @post = Post.where(prefecture: "長崎県").order("id DESC")
    @prefecture = "長崎県"
    render action: :show
  end

  def kumamoto
    @post = Post.where(prefecture: "熊本県").order("id DESC")
    @prefecture = "熊本県"
    render action: :show
  end

  def oita
    @post = Post.where(prefecture: "大分県").order("id DESC")
    @prefecture = "大分県"
    render action: :show
  end

  def miyazaki
    @post = Post.where(prefecture: "宮崎県").order("id DESC")
    @prefecture = "宮崎県"
    render action: :show
  end

  def kagoshima
    @post = Post.where(prefecture: "鹿児島県").order("id DESC")
    @prefecture = "鹿児島県"
    render action: :show
  end

  def okinawa
    @post = Post.where(prefecture: "沖縄県").order("id DESC")
    @prefecture = "沖縄県"
    render action: :show
  end

  end
