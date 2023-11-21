class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new(product_params)
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product), notice: "#{@product.name} was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def destroy

  # end

  private

  def product_params
    params.require(:product).permit(:name, :category, :brand, :condition, :price)
  end
end