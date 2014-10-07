class QuizzesController < ApplicationController

  @@counter = 1
  @@answers_array = []

  def index
    @user = User.find(params[:id])
  end

  def new
  end

  def show
    @user = User.find(params[:user_id])
  end

  def update
    if @@counter == 5
      @@answers_array << params["answer"]
      user_personality = @@answers_array.each_with_object(Hash.new(0)) { |word, counts|
      counts[word] +=1 }.max_by { |k,v| v}[0]
      personality_id = Personality.find_by(name: user_personality).id
      user = User.find(params[:user_id])
      user.personality_id = personality_id
      user.save
      @@counter = 1
      redirect_to user_personality_path
    else
      @@answers_array << params["answer"]
      @@counter += 1
      redirect_to user_quiz_path(:anchor => @@counter)
    end
  end

end
