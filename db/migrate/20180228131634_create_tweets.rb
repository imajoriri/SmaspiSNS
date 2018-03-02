class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.integer :favorite_id
      t.integer :smaspi_id

      t.string :content
      t.string :name

      t.timestamps
    end
  end
end
