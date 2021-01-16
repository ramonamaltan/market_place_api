class Api::V1::ProductsController < ApplicationController
  before_action :set_product, only: [:show]
  before_action :check_login, only: [:create]

  def index
    render json: Product.all
  end

  def show
    render json: @product
  end

  def create
    product = current_user.products.build(product_params)
    if product.save
      render json: product, status: :created
    else
      render json: { errors: product.errors }, status: :unprocessable_entity
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :published, :price)
  end
end
