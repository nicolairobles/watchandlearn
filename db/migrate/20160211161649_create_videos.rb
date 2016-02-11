class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :urlID
      t.string :thumbnail
      t.integer :order
      t.text :description
      t.string :title
      t.references :curriculum, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
