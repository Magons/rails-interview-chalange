class CreateCharges < ActiveRecord::Migration[6.0]
  def change
    create_table :charges do |t|
      t.float :amount
      t.string :currency
      t.boolean :paid
      t.boolean :refunded
      t.integer :customer_id
      t.timestamps
    end
  end
end
