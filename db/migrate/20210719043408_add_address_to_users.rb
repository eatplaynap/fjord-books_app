# frozen_string_literal: true

class AddAddressToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :address, :text
  end
end
