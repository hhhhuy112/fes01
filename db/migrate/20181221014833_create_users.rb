class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :avatar
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
