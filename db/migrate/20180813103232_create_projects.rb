class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :category
      t.integer :capacity
      t.references :user

      t.timestamps
    end
  end
end
