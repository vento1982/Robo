class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :shipping_type, index: true, foreign_key: true
      t.decimal :shipping_cost

      t.timestamps null: false
    end
  end
end
