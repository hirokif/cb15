class CreateRois < ActiveRecord::Migration
  def change
    create_table :rois, id:false do |t|
      t.integer :roi_no
      t.string :roi_name

      t.timestamps null: false
    end
  end
end
