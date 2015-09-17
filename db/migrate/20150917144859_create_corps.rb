class CreateCorps < ActiveRecord::Migration
  def change
    create_table :corps, id: false do |t|
      t.string :corp_no, limit: 8, null: false
      t.string :corp_name
      t.string :posi_no
      t.string :corp_rep
      t.string :corp_add
      t.string :corp_tel
      t.string :corp_fax
      t.string :corp_mail
      t.text :note

      t.timestamps null: false
    end
    add_index :corps, :corp_no, unique: true
  end
end
