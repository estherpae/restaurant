class RestaurantPlacesController < ApplicationController
  before_action :set_restaurant_place, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_places
  # GET /restaurant_places.json
  def index
    @restaurant_places = RestaurantPlace.all
  end

  # GET /restaurant_places/1
  # GET /restaurant_places/1.json
  def show
  end

  # GET /restaurant_places/new
  def new
    @restaurant_place = RestaurantPlace.new
  end

  # GET /restaurant_places/1/edit
  def edit
  end

  # POST /restaurant_places
  # POST /restaurant_places.json
  def create
    @restaurant_place = RestaurantPlace.new(restaurant_place_params)

    respond_to do |format|
      if @restaurant_place.save
        format.html { redirect_to @restaurant_place, notice: 'Restaurant place was successfully created.' }
        format.json { render action: 'show', status: :created, location: @restaurant_place }
      else
        format.html { render action: 'new' }
        format.json { render json: @restaurant_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_places/1
  # PATCH/PUT /restaurant_places/1.json
  def update
    respond_to do |format|
      if @restaurant_place.update(restaurant_place_params)
        format.html { redirect_to @restaurant_place, notice: 'Restaurant place was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @restaurant_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_places/1
  # DELETE /restaurant_places/1.json
  def destroy
    @restaurant_place.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_places_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_place
      @restaurant_place = RestaurantPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_place_params
      params.require(:restaurant_place).permit(:name, :address)
    end
end
