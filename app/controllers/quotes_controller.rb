class QuotesController < ApplicationController

  def index
    @quotes = Quote.all.paginate(page: params[:page], per_page: 5)
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)
    if @quote.save
      flash[:success] = "New quote has been created"
      redirect_to quotes_path
    else
      flash.now[:danger] = "New quote has not been created"
      render :new
    end
  end

  def show
    @quote = Quote.find(params[:id])
  end

  private

    def quote_params
      params.require(:quote).permit(:text)
    end

end
