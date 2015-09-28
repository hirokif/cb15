class CreateTois < ActiveRecord::Migration
  def change
    create_table :tois, id:false do |t|
      t.integer :toi_no
      t.string :toi_name

      t.timestamps null: false
    end
  end
end
