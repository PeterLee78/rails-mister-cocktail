class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end


  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy

  end

  private

    def cocktail_params
      params.require(:cocktail).permit(:name)
    end
end
