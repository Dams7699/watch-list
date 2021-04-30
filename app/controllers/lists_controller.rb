class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:list])
    @list.save
  end

  def destroy
    @list = list.find(params[:id])
    @list.destroy

    redirect_to lists_path
  end
end
