class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
   #お気に入り機能
  has_many :reverse_of_favorites
  has_many :liked, through: :reverse_of_favorites, source: :user
end
