require 'carrierwave/mongoid'
CarrierWave.configure do |config|
  config.storage = :grid_fs
  #config.grid_fs_database = ""
  #config.grid_fs_host = ""
  #config.orm  = :mongoid
  #include CarrierWave::Uploader::GridFs
  #config.grid_fs_database = "ghb" # 数据库名称
  #DatabaseCleaner.orm = "mongoid"
  # Storage access url
  config.grid_fs_access_url = "/upload/grid"

end