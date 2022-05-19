class GnomeparcelsController < ApplicationController
  before_action :set_gnomeparcel, only: %i[ show edit update destroy ]

  # GET /gnomeparcels or /gnomeparcels.json
  def index
    @gnomeparcels = Gnomeparcel.all
  end

  # GET /gnomeparcels/1 or /gnomeparcels/1.json
  def show
  end

  # GET /gnomeparcels/new
  def new
    @gnomeparcel = Gnomeparcel.new
  end

  # GET /gnomeparcels/1/edit
  def edit
  end

  # POST /gnomeparcels or /gnomeparcels.json
  def create
    @gnomeparcel = Gnomeparcel.new(gnomeparcel_params)

    respond_to do |format|
      if @gnomeparcel.save
        format.html { redirect_to gnomeparcel_url(@gnomeparcel), notice: "Gnomeparcel was successfully created." }
        format.json { render :show, status: :created, location: @gnomeparcel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gnomeparcel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gnomeparcels/1 or /gnomeparcels/1.json
  def update
    respond_to do |format|
      if @gnomeparcel.update(gnomeparcel_params)
        format.html { redirect_to gnomeparcel_url(@gnomeparcel), notice: "Gnomeparcel was successfully updated." }
        format.json { render :show, status: :ok, location: @gnomeparcel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gnomeparcel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gnomeparcels/1 or /gnomeparcels/1.json
  def destroy
    @gnomeparcel.destroy

    respond_to do |format|
      format.html { redirect_to gnomeparcels_url, notice: "Gnomeparcel was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gnomeparcel
      @gnomeparcel = Gnomeparcel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gnomeparcel_params
      params.require(:gnomeparcel).permit(:landaddress, :open_to_visitors, :open_to_new_members, :latlong, :waterbodies, :maps, :population, :maxcapacity, :vision, :landhookups, :roadaccess, :seasonalhazards, :water, :electric, :sewage, :wifi, :user_id)
    end
end
