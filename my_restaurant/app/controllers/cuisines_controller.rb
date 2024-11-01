class CuisinesController < ApplicationController
  def index
    @sort_column = sort_column
    @sort_direction = sort_direction

    if params[:query].present?
      @restaurants = Restaurant.joins(:cuisines)
                         .where('restaurants.name ILIKE ? OR cuisines.name ILIKE ?', "%#{params[:query]}%", "%#{params[:query]}%")
                         .order("#{@sort_column} #{@sort_direction}")
                         .paginate(page: params[:page], per_page: 10)
    else
      @restaurants = Restaurant.joins(:cuisines)
                         .order("#{@sort_column} #{@sort_direction}")
                         .paginate(page: params[:page], per_page: 10)
    end
  end
end
