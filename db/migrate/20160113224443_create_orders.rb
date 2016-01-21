class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :email
      t.boolean :realized_payment

      t.timestamps null: false
    end
  end
end
