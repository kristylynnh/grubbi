class PhotoUploader < CarrierWave::Uploader::Base

  storage :file
  
  def cache_dir
    # should return path to cache dir
    Rails.root.join 'tmp/uploads'
  end
end
