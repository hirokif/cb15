class RenameColumnToCds < ActiveRecord::Migration
  def change
    rename_column :cds, :toi_no, :roi_no
  end
end
