class VaccineregsController < ApplicationController
  before_action :set_vaccinereg, only: [:show, :edit, :update, :destroy]

  # GET /vaccineregs
  # GET /vaccineregs.json
  def index
    @vaccineregs = Vaccinereg.all
  end

  # GET /vaccineregs/1
  # GET /vaccineregs/1.json
  def show
  end

  # GET /vaccineregs/new
  def new
    @vaccinereg = Vaccinereg.new
  end

  # GET /vaccineregs/1/edit
  def edit
  end

  # POST /vaccineregs
  # POST /vaccineregs.json
  def create
    @vaccinereg = Vaccinereg.new(vaccinereg_params)

    respond_to do |format|
      if @vaccinereg.save
        format.html { redirect_to @vaccinereg, notice: 'Vaccinereg was successfully created.' }
        format.json { render :show, status: :created, location: @vaccinereg }
      else
        format.html { render :new }
        format.json { render json: @vaccinereg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vaccineregs/1
  # PATCH/PUT /vaccineregs/1.json
  def update
    respond_to do |format|
      if @vaccinereg.update(vaccinereg_params)
        format.html { redirect_to @vaccinereg, notice: 'Vaccinereg was successfully updated.' }
        format.json { render :show, status: :ok, location: @vaccinereg }
      else
        format.html { render :edit }
        format.json { render json: @vaccinereg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vaccineregs/1
  # DELETE /vaccineregs/1.json
  def destroy
    @vaccinereg.destroy
    respond_to do |format|
      format.html { redirect_to vaccineregs_url, notice: 'Vaccinereg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vaccinereg
      @vaccinereg = Vaccinereg.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vaccinereg_params
      params.require(:vaccinereg).permit(:firstname, :lastname, :idpass, :birthday, :gender, :email, :phone, :country, :province, :city, :address, :zipcode, :insurancecompany, :insuranceid, :healthcondition, :currentmedication, :allergies, :covidhistory, :coviddetail, :remark, :declare)
    end
end
