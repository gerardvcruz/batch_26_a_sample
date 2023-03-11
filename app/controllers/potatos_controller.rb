class PotatosController < ApplicationController
  # GET /potatos
  def index
    @potatos = Potato.all
    @page_title = "All The Potatoes"
  end

  # GET /potatos/new
  def new
    @potato = Potato.new
  end

  # POST /potatos
  def create
    @potato = Potato.new(potato_params)

    if @potato.save
      render json: { success: true }, status: 200
    else
      render json: { success: false }, status: 403
    end
  end

  private
  def potato_params
    params.require(:potato).permit(:kg, :province, :price)
  end
end
