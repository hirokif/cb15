class RenamePosiNoColumnCorps < ActiveRecord::Migration
  def change
    rename_column :corps, :posi_no, :corp_pos
  end
end
