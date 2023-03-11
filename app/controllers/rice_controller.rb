class RiceController < ApplicationController
  before_action :set_rice, only: %i[ show edit update destroy ]

  # GET /rice or /rice.json
  def index
    @rice = Rice.all
  end

  # GET /rice/1 or /rice/1.json
  def show
    # @rice that is accessible in our view...
  end

  # GET /rice/new
  def new
    @rice = Rice.new
  end

  # GET /rice/1/edit
  def edit
  end

  # POST /rice or /rice.json
  def create
    @rice = Rice.new(rice_params)

    respond_to do |format|
      if @rice.save
        format.html { redirect_to rice_url(@rice), notice: "Rice was successfully created." }
        format.json { render :show, status: :created, location: @rice }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rice/1 or /rice/1.json
  def update
    respond_to do |format|
      if @rice.update(rice_params)
        format.html { redirect_to rice_url(@rice), notice: "Rice was successfully updated." }
        format.json { render :show, status: :ok, location: @rice }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rice/1 or /rice/1.json
  def destroy
    @rice.destroy

    respond_to do |format|
      format.html { redirect_to rice_index_url, notice: "Rice was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rice
      @rice = Rice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rice_params
      params.require(:rice).permit(:kg, :brand, :price)
    end
end
