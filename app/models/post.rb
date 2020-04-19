class Post < ApplicationRecord
  validates :title, :main, :Prefecture, :person, :starttime, :money, presence: true
end
