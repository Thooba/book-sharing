class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.date :release_date
      t.string :synopsis
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
