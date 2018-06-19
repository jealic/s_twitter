class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.text :description
      t.integer :replies_count
      t.integer :likes_count

      t.timestamps
    end
  end
end
