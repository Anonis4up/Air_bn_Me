class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.bike = @bike
    if @bookmark.save
      redirect_to bike_path(@bike)
    else
      @bookmark = @bike.bookmarks
      render "bikes/show", status: :unprocessable_entity
    end
  end

  def destroy

  end
end
