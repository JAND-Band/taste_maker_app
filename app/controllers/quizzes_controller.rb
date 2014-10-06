class QuizzesController < ApplicationController

  def index
    @user = User.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
  end

  def create
  end


end
