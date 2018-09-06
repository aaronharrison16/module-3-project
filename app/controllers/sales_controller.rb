class SalesController < ApplicationController
  
  before_action :set_sale, only: [:show, :edit]

  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(params.require(:sale).permit(:title, :description, :qty_available))

    @sale.save

    redirect_to @sale, notice: 'Your sale was created successfully '
  end

  def show
    @sale = Sale.find(params[:id])
  end

  def edit
  end

  def update
    if @sale.update(sale_params)
      redirect_to @sale, notice: 'Your sale was updated successfully'
    else
      render :edit
    end
  end
end
