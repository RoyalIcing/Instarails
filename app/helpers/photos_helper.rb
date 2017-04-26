module PhotosHelper
  def like_icon(liked)
    if liked
      '<i class="fa fa-heart fa-3x" aria-hidden="true"></i>'.html_safe
    else
      '<i class="fa fa-heart-o fa-3x" aria-hidden="true"></i>'.html_safe
    end
  end
end
