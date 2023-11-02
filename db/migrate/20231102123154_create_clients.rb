class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :client_id
      t.string :name
      t.integer :total_orders
      t.string :segment
      t.float :churn

      t.timestamps
    end
  end
end
