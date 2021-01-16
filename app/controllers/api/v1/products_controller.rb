class Api::V1::ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  def show
    render json: @product
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
