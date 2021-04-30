class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(params[:bookmark])
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    @bookmark.save
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @list = bookmark.list
    @bookmark.destroy

    redirect_to bookmarks_path
  end

end
