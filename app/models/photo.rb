class Photo < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  has_many :likes, class_name: 'PhotoLike'
  has_many :comments, class_name: 'PhotoComment'

  def liked_by?(user)
    PhotoLike.where(photo: self, user: user).exists?
    #likes.where(user: user).count > 0
  end
end
