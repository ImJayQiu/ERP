class LivingitemsController < ApplicationController
  before_action :set_livingitem, only: [:show, :edit, :update, :destroy]

  # GET /livingitems
  # GET /livingitems.json
  def index
    @livingitems = Livingitem.all
  end

  # GET /livingitems/1
  # GET /livingitems/1.json
  def show
  end

  # GET /livingitems/new
  def new
    @livingitem = Livingitem.new
  end

  # GET /livingitems/1/edit
  def edit
  end

  # POST /livingitems
  # POST /livingitems.json
  def create
    @livingitem = Livingitem.new(livingitem_params)

    respond_to do |format|
      if @livingitem.save
        format.html { redirect_to @livingitem, notice: 'Livingitem was successfully created.' }
        format.json { render :show, status: :created, location: @livingitem }
      else
        format.html { render :new }
        format.json { render json: @livingitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /livingitems/1
  # PATCH/PUT /livingitems/1.json
  def update
    respond_to do |format|
      if @livingitem.update(livingitem_params)
        format.html { redirect_to @livingitem, notice: 'Livingitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @livingitem }
      else
        format.html { render :edit }
        format.json { render json: @livingitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /livingitems/1
  # DELETE /livingitems/1.json
  def destroy
    @livingitem.destroy
    respond_to do |format|
      format.html { redirect_to livingitems_url, notice: 'Livingitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_livingitem
      @livingitem = Livingitem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def livingitem_params
      params.require(:livingitem).permit(:name, :des, :remark)
    end
end
