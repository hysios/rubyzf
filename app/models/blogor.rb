class Blogor
  include Mongoid::Document
  field :name, type: String
  field :content, type: String
  field :file
  mount_uploader :file, FileooUploader
end
