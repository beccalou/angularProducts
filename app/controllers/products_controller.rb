class ProductsController < ApplicationController

# GET /articles.json
  def index
    @products = Product.all
    render json: @products
  end

  def new
    @product = Product.new(product_params)
  end

  def create
    @product = Product.create
    render json: @product
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end

end
