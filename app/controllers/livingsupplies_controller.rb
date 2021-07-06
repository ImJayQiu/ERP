class LivingsuppliesController < ApplicationController
  before_action :set_livingsupply, only: [:show, :edit, :update, :destroy]

  # GET /livingsupplies
  # GET /livingsupplies.json
  def index
    @livingsupplies = Livingsupply.all
  end

  # GET /livingsupplies/1
  # GET /livingsupplies/1.json
  def show
  end

  # GET /livingsupplies/new
  def new
    @livingsupply = Livingsupply.new
  end

  # GET /livingsupplies/1/edit
  def edit
  end

  # POST /livingsupplies
  # POST /livingsupplies.json
  def create
    @livingsupply = Livingsupply.new(livingsupply_params)

    respond_to do |format|
      if @livingsupply.save
        format.html { redirect_to @livingsupply, notice: 'Livingsupply was successfully created.' }
        format.json { render :show, status: :created, location: @livingsupply }
      else
        format.html { render :new }
        format.json { render json: @livingsupply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /livingsupplies/1
  # PATCH/PUT /livingsupplies/1.json
  def update
    respond_to do |format|
      if @livingsupply.update(livingsupply_params)
        format.html { redirect_to @livingsupply, notice: 'Livingsupply was successfully updated.' }
        format.json { render :show, status: :ok, location: @livingsupply }
      else
        format.html { render :edit }
        format.json { render json: @livingsupply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /livingsupplies/1
  # DELETE /livingsupplies/1.json
  def destroy
    @livingsupply.destroy
    respond_to do |format|
      format.html { redirect_to livingsupplies_url, notice: 'Livingsupply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_livingsupply
      @livingsupply = Livingsupply.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def livingsupply_params
      params.require(:livingsupply).permit(:date, :item, :quantity, :unit, :province, :remark)
    end
end
