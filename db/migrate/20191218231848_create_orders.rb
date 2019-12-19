class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :request
      t.string :comments

      t.timestamps
    end
  end
end
