class BrewsController < ApplicationController

  def index
    @brews = Brew.all
  end

  def show
    @brew = Brew.find(params[:id])
    render :show
  end

  def new
    @brew = Brew.new
  end

end
