class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.integer :customer_id
      t.decimal :totalPrice
      t.integer :number
      t.integer :validity
      t.string :age
      t.boolean :use

      t.timestamps
    end
  end
end
