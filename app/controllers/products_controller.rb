class ProductsController < ApplicationController

# GET /articles.json
  def index
    @products = Product.all
    render json: @products
  end

  def new
    new_product = Product.new(product_params)
    if new_product.valid?
      new_product.save!
    else
      render 'public/422', :status => 422
    end
    render json: new_product
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
