class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :videos, :order, :position
  end
end
