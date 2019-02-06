# frozen_string_literal: true

class AddUseridToWall < ActiveRecord::Migration[5.1]
  def change
    add_column :walls, :user_id, :integer
    add_index :walls, :user_id
  end
end
