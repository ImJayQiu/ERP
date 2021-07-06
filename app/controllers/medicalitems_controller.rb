class MedicalitemsController < ApplicationController
  before_action :set_medicalitem, only: [:show, :edit, :update, :destroy]

  # GET /medicalitems
  # GET /medicalitems.json
  def index
    @medicalitems = Medicalitem.all
  end

  # GET /medicalitems/1
  # GET /medicalitems/1.json
  def show
  end

  # GET /medicalitems/new
  def new
    @medicalitem = Medicalitem.new
  end

  # GET /medicalitems/1/edit
  def edit
  end

  # POST /medicalitems
  # POST /medicalitems.json
  def create
    @medicalitem = Medicalitem.new(medicalitem_params)

    respond_to do |format|
      if @medicalitem.save
        format.html { redirect_to @medicalitem, notice: 'Medicalitem was successfully created.' }
        format.json { render :show, status: :created, location: @medicalitem }
      else
        format.html { render :new }
        format.json { render json: @medicalitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicalitems/1
  # PATCH/PUT /medicalitems/1.json
  def update
    respond_to do |format|
      if @medicalitem.update(medicalitem_params)
        format.html { redirect_to @medicalitem, notice: 'Medicalitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicalitem }
      else
        format.html { render :edit }
        format.json { render json: @medicalitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicalitems/1
  # DELETE /medicalitems/1.json
  def destroy
    @medicalitem.destroy
    respond_to do |format|
      format.html { redirect_to medicalitems_url, notice: 'Medicalitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicalitem
      @medicalitem = Medicalitem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medicalitem_params
      params.require(:medicalitem).permit(:name, :des, :remark)
    end
end
