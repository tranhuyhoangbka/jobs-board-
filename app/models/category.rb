class Category < ActiveRecord::Base
  has_many :jobs, dependent: :destroy

  mount_uploader :image, ImageUploader
end
