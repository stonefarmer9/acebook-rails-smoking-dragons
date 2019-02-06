# frozen_string_literal: true

require 'rails_helper'

feature "User's profile is wall" do
  scenario 'User is redirected to wall on sign up' do
    signup_and_click
    expect(page.current_path).to eq '/users/1/walls/1'
  end
end
