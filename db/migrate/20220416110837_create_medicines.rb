class CreateMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :medicines do |t|
      t.string :title
      t.decimal :price
      t.string :description
      t.string :age
      t.boolean :recipe

      t.timestamps
    end
  end
end
