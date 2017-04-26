class Photo < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :likes, class_name: 'PhotoLike'

  def liked_by?(user)
    likes.where(user: user).count > 0
  end
end
