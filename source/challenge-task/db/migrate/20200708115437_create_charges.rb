class CreateCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :charges do |t|
      t.integer :amount
      t.string :currency
      t.boolean :paid, default: false
      t.boolean :refunded, default: false
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
