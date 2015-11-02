class Job < ActiveRecord::Base
  include Bootsy::Container

  belongs_to :category
  mount_uploader :image, ImageUploader
end
