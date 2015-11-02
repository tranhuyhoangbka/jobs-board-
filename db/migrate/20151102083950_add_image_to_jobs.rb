class AddImageToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :image, :string
    remove_column :jobs, :images
  end
end
