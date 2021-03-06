class Product < ApplicationRecord
  validates :title, presence: true
  validates :image, presence: true
  validates :quantity, presence: true
  validates :price, presence: true
  validates :category_id, presence: true
  mount_uploader :image, ImageUploader
  acts_as_list
  belongs_to :category
  has_many :favorites
  has_many :users, through: :favorites, source: :user
end
