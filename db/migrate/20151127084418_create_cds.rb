class CreateCds < ActiveRecord::Migration
  def change
    create_table :cds do |t|
      t.integer :corp_no
      t.integer :roi_no
      t.integer :mr
      t.integer :pp
      t.text :note

      t.timestamps null: false
    end
  end
end
