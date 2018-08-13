class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :avatar do
    cloudinary_transformation width: 100, height: 100, crop: :thumb, gravity: :face
  end

  version :project_photo do
    resize_to_fit 256, 256
  end
end
