class IndexpagesController < ApplicationController

    before_action :set_indexpage, only: [:show, :edit, :update, :destroy]

    # GET /indexpages
    # GET /indexpages.json
    def index
	@indexpages = Indexpage.all
    end

    # GET /indexpages/1
    # GET /indexpages/1.json
    def show
    end

    # GET /indexpages/new
    def new
	@indexpage = Indexpage.new
    end

    # GET /indexpages/1/edit
    def edit
    end

    # POST /indexpages
    # POST /indexpages.json
    def create
	@indexpage = Indexpage.new(indexpage_params)

	respond_to do |format|
	    if @indexpage.save
		format.html { redirect_to @indexpage, notice: 'Indexpage was successfully created.' }
		format.json { render :show, status: :created, location: @indexpage }
	    else
		format.html { render :new }
		format.json { render json: @indexpage.errors, status: :unprocessable_entity }
	    end
	end
    end

    # PATCH/PUT /indexpages/1
    # PATCH/PUT /indexpages/1.json
    def update
	respond_to do |format|
	    if @indexpage.update(indexpage_params)
		format.html { redirect_to @indexpage, notice: 'Indexpage was successfully updated.' }
		format.json { render :show, status: :ok, location: @indexpage }
	    else
		format.html { render :edit }
		format.json { render json: @indexpage.errors, status: :unprocessable_entity }
	    end
	end
    end

    # DELETE /indexpages/1
    # DELETE /indexpages/1.json
    def destroy
	@indexpage.destroy
	respond_to do |format|
	    format.html { redirect_to indexpages_url, notice: 'Indexpage was successfully destroyed.' }
	    format.json { head :no_content }
	end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_indexpage
	@indexpage = Indexpage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def indexpage_params
	params.require(:indexpage).permit(:t01, :t02, :t03, :t04, :t05, :t06, :t07, :t08, :t09, :t10, :t11, :t12, :t13, :t14, :t15, :t16, :t17, :t18, :t19, :t20, :t21, :t22, :t23, :t24, :t25, :t26, :t27, :t28, :t29, :t30)
    end
end
