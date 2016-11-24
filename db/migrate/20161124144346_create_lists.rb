class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :title, null: false, unique: true
      t.string :url, null: false, unique: true

      t.timestamps #te crea las dos fechas 
    end
  end
end
