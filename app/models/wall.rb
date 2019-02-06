# frozen_string_literal: true

class Wall < ApplicationRecord
  belongs_to :user
  has_many :posts
end
