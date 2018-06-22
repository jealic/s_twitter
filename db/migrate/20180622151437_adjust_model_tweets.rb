class AdjustModelTweets < ActiveRecord::Migration[5.1]
  def change
    remove_column :tweets, :replies_count
    remove_column :tweets, :likes_count
    add_column :tweets, :replies_count, :integer, default: 0
    add_column :tweets, :likes_count, :integer, default: 0
  end
end
