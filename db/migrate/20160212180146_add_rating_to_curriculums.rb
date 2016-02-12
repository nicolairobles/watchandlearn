class AddRatingToCurriculums < ActiveRecord::Migration
  def change
    add_column :curriculums, :rating, :integer
  end
end
