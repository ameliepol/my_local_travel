module ApplicationHelper

  def photo_url(photo)
    if photo.nil?
      return image_url("guinguette.jpg")
    else
      return photo.key
    end
  end
end
