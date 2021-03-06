class ArtworksController < ApplicationController
  def create
    @artwork = Artwork.new(artwork_params)
    if @artwork.save!
      render json: @artwork
    else
      render json: artworks.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
    render json: @artwork
  end

  def index
    @artworks = Artwork.find(params[:user_id])
    render json: @artworks
  end

  def show
    @artwork = Artwork.find(params[:id])
    if @artwork
      render json: @artwork
    else
      render json: artworks.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    @artwork = Artwork.find(params[:id])
    if @artwork.update_attributes(artwork_params)
      render json: @artwork
    else
      render json: artworks.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end
