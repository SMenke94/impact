class AddDefaultValueToActive < ActiveRecord::Migration[5.2]
  def change
    change_column :projects, :active, :boolean, default: true
  end
end
