class CreateRegisters < ActiveRecord::Migration[6.1]
  def change
    create_table :registers do |t|
      t.integer :customer_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
