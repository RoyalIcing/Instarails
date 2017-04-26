class PhotoLikesController < ApplicationController
  def update
    photo = Photo.find_by(params[:id])
    photo_like = PhotoLike.find_or_initialize_by(photo: photo, user: current_user)
    if photo_like.persisted?
      photo_like.destroy
      redirect_to photo
    else
      photo_like.save
      redirect_to photo
    end
  end
end
