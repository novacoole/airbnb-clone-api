class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :update, :destroy]

  def index 
    @listings = Listing.all.order(id: "desc")
    render json: @listings
  end 

  def show 
    render json: @listing
  end 

  def create 
    Listing.create(listing_params)
    render json: "listing created", status: 200 
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
    params.require(:listing).permit(:title, :description, :url)
  end 

  def set_listing 
    @listing = listing.find(params[:id])
  end 
end
