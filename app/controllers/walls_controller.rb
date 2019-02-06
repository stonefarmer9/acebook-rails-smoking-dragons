# frozen_string_literal: true

class WallsController < ApplicationController
  def show
    @user = User.find(params[:id])
    @wall = Wall.find(params[:id])
  end
end
