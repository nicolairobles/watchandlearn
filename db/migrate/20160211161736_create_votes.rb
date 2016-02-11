class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value
      t.references :user, index: true, foreign_key: true
      t.references :video, index: true, foreign_key: true
      t.references :curriculum, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
