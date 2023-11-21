class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.all
  end

  def show; end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product), notice: "#{@product.name} was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to product_path, status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(:name, :category, :brand, :condition, :price, :sport, :description, :photo)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
