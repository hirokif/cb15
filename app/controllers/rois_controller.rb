class RoisController < ApplicationController
  before_action :set_roi, only: [:show, :edit, :update, :destroy]

  # GET /rois
  # GET /rois.json
  def index
    @rois = Roi.all
  end

  # GET /rois/1
  # GET /rois/1.json
  def show
  end

  # GET /rois/new
  def new
    @roi = Roi.new
  end

  # GET /rois/1/edit
  def edit
  end

  # POST /rois
  # POST /rois.json
  def create
    @roi = Roi.new(roi_params)

    respond_to do |format|
      if @roi.save
        format.html { redirect_to @roi, notice: 'Roi was successfully created.' }
        format.json { render :show, status: :created, location: @roi }
      else
        format.html { render :new }
        format.json { render json: @roi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rois/1
  # PATCH/PUT /rois/1.json
  def update
    respond_to do |format|
      if @roi.update(roi_params)
        format.html { redirect_to @roi, notice: 'Roi was successfully updated.' }
        format.json { render :show, status: :ok, location: @roi }
      else
        format.html { render :edit }
        format.json { render json: @roi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rois/1
  # DELETE /rois/1.json
  def destroy
    @roi.destroy
    respond_to do |format|
      format.html { redirect_to rois_url, notice: 'Roi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roi
      @roi = Roi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roi_params
      params.require(:roi).permit(:roi_no, :roi_name)
    end
end
