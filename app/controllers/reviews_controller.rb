class ReviewsController < ApplicationController

  def new
    @brew = Brew.find(params[:brew_id])
    @review = @brew.reviews.new
  end


  def create
    @brew = Brew.find(params[:brew_id])
    @review = @brew.reviews.new(review_params)
    if @review.save
      flash[:notice] = "#{@review.author}, your review was added."
      redirect_to brew_path(@review.brew)
    else
      render :new
    end
  end

  private
    def review_params
      params.require(:review).permit(:brew_id, :author, :content, :rating)
    end

end
