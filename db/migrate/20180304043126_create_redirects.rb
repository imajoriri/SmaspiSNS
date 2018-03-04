class CreateRedirects < ActiveRecord::Migration[5.1]
  def change
    create_table :redirects do |t|
      t.integer :user_id

      t.integer :type
      t.string :controller
      t.string :action

      t.timestamps
    end
  end
end
