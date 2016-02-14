class AddVideocountToCurriculums < ActiveRecord::Migration
  def change
    add_column :curriculums, :videocount, :integer
  end
end
