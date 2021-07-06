class CountryinfosController < ApplicationController
  before_action :set_countryinfo, only: %i[ show edit update destroy ]

  # GET /countryinfos or /countryinfos.json
  def index
    @countryinfos = Countryinfo.all
  end

  # GET /countryinfos/1 or /countryinfos/1.json
  def show
  end

  # GET /countryinfos/new
  def new
    @countryinfo = Countryinfo.new
  end

  # GET /countryinfos/1/edit
  def edit
  end

  # POST /countryinfos or /countryinfos.json
  def create
    @countryinfo = Countryinfo.new(countryinfo_params)

    respond_to do |format|
      if @countryinfo.save
        format.html { redirect_to @countryinfo, notice: "Countryinfo was successfully created." }
        format.json { render :show, status: :created, location: @countryinfo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @countryinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countryinfos/1 or /countryinfos/1.json
  def update
    respond_to do |format|
      if @countryinfo.update(countryinfo_params)
        format.html { redirect_to @countryinfo, notice: "Countryinfo was successfully updated." }
        format.json { render :show, status: :ok, location: @countryinfo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @countryinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countryinfos/1 or /countryinfos/1.json
  def destroy
    @countryinfo.destroy
    respond_to do |format|
      format.html { redirect_to countryinfos_url, notice: "Countryinfo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_countryinfo
      @countryinfo = Countryinfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def countryinfo_params
      params.require(:countryinfo).permit(:name, :ISO, :lon, :lat, :zoom, :remark)
    end
end
