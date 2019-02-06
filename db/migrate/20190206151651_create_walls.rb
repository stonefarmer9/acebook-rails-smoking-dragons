# frozen_string_literal: true

class CreateWalls < ActiveRecord::Migration[5.1]
  def change
    create_table :walls, &:timestamps
  end
end
