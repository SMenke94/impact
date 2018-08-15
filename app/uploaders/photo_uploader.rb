class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def default_url(*args)
    if model.is_a? User
      ActionController::Base.helpers.asset_path(["default_profile.jpeg"].compact.join("_"))
    elsif model.is_a? Project
      ActionController::Base.helpers.asset_path(["default_project.jpeg"].compact.join("_"))
    end
  end

  version :avatar do
    cloudinary_transformation width: 250, height: 250, crop: :thumb, gravity: :face
  end

  version :project_photo do
    resize_to_fit 256, 256
  end
end
