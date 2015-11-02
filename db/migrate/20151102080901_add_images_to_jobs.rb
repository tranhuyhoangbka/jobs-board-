class AddImagesToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :images, :text
  end
end
