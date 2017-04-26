class PhotoCommentsController < ApplicationController
  def create
    photo = Photo.find(params[:id])
    comment = PhotoComment.new(comment_params)
    comment.photo = photo
    comment.user = current_user
    if comment.save
      redirect_to photo, notice: 'Your comment has been posted'
    else
      redirect_to photo, alert: 'Your comment could not be posted'
    end
  end

  def comment_params
    params.require(:photo_comment).permit(:content)
  end
end
