class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def new
    @list = List.find(params[:list_id])
    @bookmarks = Bookmark.new
  end

  def create
    @bookmarks = Bookmark.new(bookmark_param)
    @bookmarks.save
    redirect_to lists_path
  end

  def destroy
    @bookmarks = Bookmark.delete(bookmark_param)
  end


# private

def bookmark_param
  params.require(:bookmark).permit(:comment, :movie_id, :list_id)
end

end
