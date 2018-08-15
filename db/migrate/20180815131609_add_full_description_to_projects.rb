class AddFullDescriptionToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :full_description, :text
  end
end
