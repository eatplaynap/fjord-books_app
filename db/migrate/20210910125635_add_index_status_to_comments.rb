class AddIndexStatusToComments < ActiveRecord::Migration[6.1]
  def change
    add_index :comments, :commentable_type
    add_index :comments, :commentable_id
    add_index :comments, :user_id
  end
end
