class MedicalsuppliesController < ApplicationController
  before_action :set_medicalsupply, only: [:show, :edit, :update, :destroy]

  # GET /medicalsupplies
  # GET /medicalsupplies.json
  def index
    @medicalsupplies = Medicalsupply.all
  end

  # GET /medicalsupplies/1
  # GET /medicalsupplies/1.json
  def show
  end

  # GET /medicalsupplies/new
  def new
    @medicalsupply = Medicalsupply.new
  end

  # GET /medicalsupplies/1/edit
  def edit
  end

  # POST /medicalsupplies
  # POST /medicalsupplies.json
  def create
    @medicalsupply = Medicalsupply.new(medicalsupply_params)

    respond_to do |format|
      if @medicalsupply.save
        format.html { redirect_to @medicalsupply, notice: 'Medicalsupply was successfully created.' }
        format.json { render :show, status: :created, location: @medicalsupply }
      else
        format.html { render :new }
        format.json { render json: @medicalsupply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicalsupplies/1
  # PATCH/PUT /medicalsupplies/1.json
  def update
    respond_to do |format|
      if @medicalsupply.update(medicalsupply_params)
        format.html { redirect_to @medicalsupply, notice: 'Medicalsupply was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicalsupply }
      else
        format.html { render :edit }
        format.json { render json: @medicalsupply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicalsupplies/1
  # DELETE /medicalsupplies/1.json
  def destroy
    @medicalsupply.destroy
    respond_to do |format|
      format.html { redirect_to medicalsupplies_url, notice: 'Medicalsupply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicalsupply
      @medicalsupply = Medicalsupply.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medicalsupply_params
      params.require(:medicalsupply).permit(:date, :item, :quantity, :unit, :province, :remark)
    end
end
