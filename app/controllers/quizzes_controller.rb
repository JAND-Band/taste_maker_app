class QuizzesController < ApplicationController

  def index
    @user = User.find(params[:id])
  end

  def new
  end

  def create
  end


end
