class AddAttributesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :avatar, :string
    add_column :users, :introduction, :text
    add_column :users, :follower_count, :integer, default: 0
    add_column :users, :likes_count, :integer, default: 0
  end
end
