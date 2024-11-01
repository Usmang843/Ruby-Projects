class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[ show edit update destroy ]
  before_action :check_admin, only: %i[new create edit update destroy ]

  # GET /restaurants or /restaurants.json
  def index
    @restaurants = load_restaurants
  end

  def search
    if params[:query].blank?
      redirect_to restaurants_path, notice: "Please enter a search term."
    else
      @restaurants = search_restaurants(params[:query])
      render :index  # This renders the index view with the search results
    end

  end
  # GET /restaurants/1 or /restaurants/1.json
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
    @restaurant.cuisines.build
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants or /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: "Restaurant was successfully created." }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1 or /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: "Restaurant was successfully updated." }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1 or /restaurants/1.json
  def destroy
    @restaurant.destroy!

    respond_to do |format|
      format.html { redirect_to restaurants_path, status: :see_other, notice: "Restaurant was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private

  def load_restaurants
    restaurants = Restaurant.left_joins(:reviews, :cuisines)
                      .select('restaurants.*, AVG(reviews.rating) AS avg_rating')
                      .group('restaurants.id')

    # Apply filtering by price if parameters are present
    if params[:min_price].present? || params[:max_price].present?
      min_price = params[:min_price].to_f
      max_price = params[:max_price].to_f
      restaurants = restaurants.where('cuisines.price BETWEEN ? AND ?', min_price, max_price)
    end

    # Apply sorting
    restaurants = restaurants.order(sort_order)
                      .paginate(page: params[:page], per_page: 3)

    restaurants
  end

  def search_restaurants(query)
    return Restaurant.none if query.blank?  # Handle empty search gracefully

    # Restaurant.left_joins(:reviews)
    #     .where("restaurants.name ILIKE :query OR restaurants.address ILIKE :query", query: "%#{query}%")  # Use ILIKE for case-insensitive search
    #     .select('restaurants.*, AVG(reviews.rating) AS avg_rating')
    #     .group('restaurants.id')
    #     .order('avg_rating DESC')  # Order by average rating or modify as needed
    #     .paginate(page: params[:page], per_page: 3)


    # First, get the IDs of matching restaurants based on the search query.
    matching_restaurants = Restaurant.flexible_search(query).pluck(:id)

    # Now, fetch the restaurants, calculate avg_rating, and order by avg_rating
    Restaurant.where(id: matching_restaurants)
        .left_joins(:reviews)
        .select('restaurants.*, AVG(reviews.rating) AS avg_rating')
        .group('restaurants.id')
        .order('avg_rating DESC')
        .paginate(page: params[:page], per_page: 3)

  end


  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params.require(:id))
  end

  def check_admin
    redirect_to root_path, alert: "Only admin Can Change" unless current_user&.admin?
  end

  # Only allow a list of trusted parameters through.
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :address, :phone, cuisines_attributes: [:id, :name, :price, :_destroy])
  end


  def sort_column
    %w[name address rating].include?(params[:sort]) ? params[:sort] : 'name' # Default sort by name
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc' # Default sort direction
  end

  def sort_order
    column = sort_column
    direction = sort_direction

    case column
    when 'rating'
      'avg_rating ' + direction
    when 'name'
      'restaurants.name ' + direction
    when 'address'
      'restaurants.address ' + direction
    else
      column + ' ' + direction
    end
  end





end
