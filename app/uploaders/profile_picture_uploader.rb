# encoding: utf-8

class ProfilePictureUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :profile_picture do
    resize_to_fit 50, 50
  end
end
