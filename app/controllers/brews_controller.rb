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

  def create
    @brew = Brew.new(brew_params)
    if @brew.save
      flash[:notice] = "#{@brew.name} was added to the list"
      redirect_to brews_path
    else
      render :new
    end
  end

  private
    def brew_params
      params.require(:brew).permit(:name, :price, :state)
    end

end
