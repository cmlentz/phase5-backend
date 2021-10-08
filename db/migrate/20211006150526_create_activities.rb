class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :age_req
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
