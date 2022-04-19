class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.decimal :totalPrice
      t.string :state

      t.timestamps
    end
  end
end
