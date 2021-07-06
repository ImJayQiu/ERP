class Covid19casesController < ApplicationController
  before_action :set_covid19case, only: [:show, :edit, :update, :destroy]

  # GET /covid19cases
  # GET /covid19cases.json
  def index
    #@covid19cases = Covid19case.all
      @covid19cases = Covid19case.paginate(page: params[:page], per_page: 30).order('id DESC')
  end

  # GET /covid19cases/1
  # GET /covid19cases/1.json
  def show
  end

  # GET /covid19cases/new
  def new
    @covid19case = Covid19case.new
  end

  # GET /covid19cases/1/edit
  def edit
  end

  # POST /covid19cases
  # POST /covid19cases.json
  def create
    @covid19case = Covid19case.new(covid19case_params)

    respond_to do |format|
      if @covid19case.save
        format.html { redirect_to @covid19case, notice: 'Covid19case was successfully created.' }
        format.json { render :show, status: :created, location: @covid19case }
      else
        format.html { render :new }
        format.json { render json: @covid19case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /covid19cases/1
  # PATCH/PUT /covid19cases/1.json
  def update
    respond_to do |format|
      if @covid19case.update(covid19case_params)
        format.html { redirect_to @covid19case, notice: 'Covid19case was successfully updated.' }
        format.json { render :show, status: :ok, location: @covid19case }
      else
        format.html { render :edit }
        format.json { render json: @covid19case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /covid19cases/1
  # DELETE /covid19cases/1.json
  def destroy
    @covid19case.destroy
    respond_to do |format|
      format.html { redirect_to covid19cases_url, notice: 'Covid19case was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_covid19case
      @covid19case = Covid19case.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def covid19case_params
      params.require(:covid19case).permit(:name, :age, :sex, :nationality, :qua_province, :notification_date, :announce_date, :onset_province, :onset_district, :status, :id_pass, :remark1, :remark2)
    end
end
