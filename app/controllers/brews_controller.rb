class BrewsController < ApplicationController

  def index
    @brews = Brew.all
  end

  def show
    @brew = Brew.find(params[:id])
    @reviews = @brew.reviews 
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

  def edit
    @brew = Brew.find(params[:id])
  end

  def update
    @brew = Brew.find(params[:id])
    if @brew.update(brew_params)
      flash[:notice] = "#{@brew.name} was edited."
      redirect_to brews_path
    else
      render :edit
    end
  end

  def destroy
    @brew = Brew.find(params[:id])
    @brew.destroy
    flash[:notice] = "#{@brew.name} was deleted."
    redirect_to brews_path
  end

  private
    def brew_params
      params.require(:brew).permit(:name, :price, :state)
    end

end
