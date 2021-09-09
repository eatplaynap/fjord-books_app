# frozen_string_literal: true

class RemoveDuplicatedIndex < ActiveRecord::Migration[6.1]
  def change
    remove_index :relationships, :follower_id
  end
end
