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
    user = User.find(params[:user_id])
    @personality = Personality.find(user.personality_id)
    @tastes = Taste.all
    wunderground_api
    case @personality.id
    when 1
      rss_feed_get(ESCAPE_ARTIST_URL)
      nyt_api(:escape_artist_query)
      instagram_api_eat
      instagram_api_shop
      instagram_api_go
    when 2
      rss_feed_get(INTELLIGENTSIA_URL)
      nyt_api(:intelligentsia_query)
      instagram_api_eat
      instagram_api_shop
      instagram_api_go
    when 3
      rss_feed_get(REALIST_RSS_URL)
      nyt_api(:realist_query)
      instagram_api_eat
      instagram_api_shop
      instagram_api_go
    when 4
      nyt_api(:sartorialist_query)
      rss_feed_get(SARTORIALIST_RSS_URL)
      instagram_api_eat
      instagram_api_shop
      instagram_api_go
    when 5
      nyt_api(:techie)
      meetup_api
      instagram_api_eat
      instagram_api_shop
      instagram_api_go
    end

    @tastes = @tastes.select{ |taste| taste.personality_id == @personality.id }
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
      @taste = Taste.all
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
