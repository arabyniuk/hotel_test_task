class MotelsController < ApplicationController
  # before_filter :authenticate_user!, :except => [:show, :index]
  before_action :set_motel, only: [:show, :edit, :update, :destroy]

  # GET /motels
  # GET /motels.json
  def index
    @motels = Motel.all
  end

  # GET /motels/1
  # GET /motels/1.json
  def show
  end

  # GET /motels/new
  def new
    @motel = Motel.new
    @motel.build_address
  end

  # GET /motels/1/edit
  def edit
  end

  # POST /motels
  # POST /motels.json
  def create
    @motel = Motel.new(motel_params)

    respond_to do |format|
      if @motel.save
        format.html { redirect_to @motel, notice: 'Motel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @motel }
      else
        format.html { render action: 'new' }
        format.json { render json: @motel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motels/1
  # PATCH/PUT /motels/1.json
  def update
    respond_to do |format|
      if @motel.update(motel_params)
        format.html { redirect_to @motel, notice: 'Motel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @motel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motels/1
  # DELETE /motels/1.json
  def destroy
    @motel.destroy
    respond_to do |format|
      format.html { redirect_to motels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motel
      @motel = Motel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motel_params
      params.require(:motel).permit(:title, :rating, :breakfast, :description, :price, :image, address_attributes: [:country, :state, :city, :street])
    end
end
