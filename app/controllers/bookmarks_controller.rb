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
    @list = List.find(params[:list_id])
    # We need to connec bookmark withh list
    @bookmarks.list = @list
    if @bookmarks.save
      redirect_to lists_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmarks = Bookmark.find(params[:id])
    @bookmarks.destroy
    redirect_to lists_path(@list)
  end


private

def bookmark_param
  params.require(:bookmark).permit(:comment, :movie_id)
end

end
