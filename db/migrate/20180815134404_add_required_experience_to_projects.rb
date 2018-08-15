class AddRequiredExperienceToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :requirement, :string
  end
end
