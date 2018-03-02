class CreateSmaspis < ActiveRecord::Migration[5.1]
  def change
    create_table :smaspis do |t|
      t.integer :tweet_id

      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
