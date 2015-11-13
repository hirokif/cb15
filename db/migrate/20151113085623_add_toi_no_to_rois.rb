class AddToiNoToRois < ActiveRecord::Migration
  def change
    add_column :rois, :toi_no, :integer
  end
end
