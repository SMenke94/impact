class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.references :user, foreign_key: true
      t.references :author, foreign_key: { to_table: :users}

      t.timestamps
    end
  end
end
