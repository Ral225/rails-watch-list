class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @lists = List.new
  end

  def create
    @lists = List.new(list_param)
    @lists.save
    redirect_to root_path
  end

  def destroy
    @list = List.destroy(params[:id])
    redirect_to root_path, status: :see_other
  end

private

def list_param
  params.require(:list).permit(:name)
end

end
