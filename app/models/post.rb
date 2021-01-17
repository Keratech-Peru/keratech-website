class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, uniqueness: true
  validates :content, presence: true

  has_one_attached :image
  has_and_belongs_to_many :categories
end
