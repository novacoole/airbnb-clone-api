class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :update, :destroy]

  def index 
    @listings = Listing.all
    render json: @listings, methods: :photo_url 
  end 

  def show 
    render json: @listing, methods: :photo_url
  end 

  def create 
    @listing = Listing.create(listing_params)
    render json: "listing created with id of #{@listing.id}", status: 200 
  end 

  def update 
    @listing.update(listing_params)
    render json: "listing updated", status: 200
  end 

  def destroy
    @listing.destroy
    render json: "listing deleted", status: 200
  end 

  private 

  def listing_params 
    params.require(:listing).permit(:photo, :name, :neighbourhood, :latitude, :longitude, :room_type, :price, :minimum_nights)
  end 

  def set_listing 
    @listing = Listing.find(params[:id])
  end 
end
