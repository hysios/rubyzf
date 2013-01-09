require 'carrierwave/mongoid'
class Blog
  include Mongoid::Document
  field :name
  field :content
  field :file
  mount_uploader :file, FileUploader
end
