class TastesController < ApplicationController
  before_action :set_taste, only:  [:show]
  before_action :authorize_admin_only,    only: :index

  # GET /tastes
  # GET /tastes.json
  def index
    @tastes = Taste.all
  end

  # GET /tastes/1
  # GET /tastes/1.json
  def show
    nyt_api(:escape_artist_query)
  end

  # GET /tastes/new
  def new
    @taste = Taste.new
  end

  # GET /tastes/1/edit
  def edit
  end

  # POST /tastes
  # POST /tastes.json
  def create
    @taste = Taste.new(taste_params)

    respond_to do |format|
      if @taste.save
        format.html { redirect_to @taste, notice: 'Taste was successfully created.' }
        format.json { render :show, status: :created, location: @taste }
      else
        format.html { render :new }
        format.json { render json: @taste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tastes/1
  # PATCH/PUT /tastes/1.json
  def update
    respond_to do |format|
      if @taste.update(taste_params)
        format.html { redirect_to @taste, notice: 'Taste was successfully updated.' }
        format.json { render :show, status: :ok, location: @taste }
      else
        format.html { render :edit }
        format.json { render json: @taste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tastes/1
  # DELETE /tastes/1.json
  def destroy
    @taste.destroy
    respond_to do |format|
      format.html { redirect_to tastes_url, notice: 'Taste was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taste
      @taste = Taste.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taste_params
      params.require(:taste).permit(:name)
    end

    def authorize_admin_only
    unless current_user.is_admin?
      redirect_to user_path(current_user)
    end
  end

  def authorize_user_only
    unless current_user == @user
      redirect_to user_path(current_user)
    end
  end

  def authorize_user_or_admin
    unless current_user == @user || current_user.is_admin?
      redirect_to user_path(current_user)
    end
  end
end
