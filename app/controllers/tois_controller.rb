class ToisController < ApplicationController
  before_action :set_toi, only: [:show, :edit, :update, :destroy]

  # GET /tois
  # GET /tois.json
  def index
    @tois = Toi.all
  end

  # GET /tois/1
  # GET /tois/1.json
  def show
  end

  # GET /tois/new
  def new
    @toi = Toi.new
  end

  # GET /tois/1/edit
  def edit
  end

  # POST /tois
  # POST /tois.json
  def create
    @toi = Toi.new(toi_params)

    respond_to do |format|
      if @toi.save
        format.html { redirect_to @toi, notice: 'Toi was successfully created.' }
        format.json { render :show, status: :created, location: @toi }
      else
        format.html { render :new }
        format.json { render json: @toi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tois/1
  # PATCH/PUT /tois/1.json
  def update
    respond_to do |format|
      if @toi.update(toi_params)
        format.html { redirect_to @toi, notice: 'Toi was successfully updated.' }
        format.json { render :show, status: :ok, location: @toi }
      else
        format.html { render :edit }
        format.json { render json: @toi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tois/1
  # DELETE /tois/1.json
  def destroy
    @toi.destroy
    respond_to do |format|
      format.html { redirect_to tois_url, notice: 'Toi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toi
      @toi = Toi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toi_params
      params.require(:toi).permit(:toi_no, :toi_name)
    end
end
