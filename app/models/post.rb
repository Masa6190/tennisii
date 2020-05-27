class Post < ApplicationRecord
  validates :title, :main, :Prefecture, :person, :starttime, :money, :user_id, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy
end
