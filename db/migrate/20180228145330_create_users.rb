class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :favorite_id

      t.string :name

      t.timestamps
    end
  end
end
