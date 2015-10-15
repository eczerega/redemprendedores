class HabilitiesController < ApplicationController
  before_action :set_hability, only: [:show, :edit, :update, :destroy]

  # GET /habilities
  def index
    @habilities = Hability.all
  end

  # GET /habilities/1
  def show
  end

  # GET /habilities/new
  def new
    @hability = Hability.new
  end

  # GET /habilities/1/edit
  def edit
  end

  # POST /habilities
  def create
    @hability = Hability.new(hability_params)

    if @hability.save
      redirect_to @hability, notice: 'Hability was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /habilities/1
  def update
    if @hability.update(hability_params)
      redirect_to @hability, notice: 'Hability was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /habilities/1
  def destroy
    @hability.destroy
    redirect_to habilities_url, notice: 'Hability was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hability
      @hability = Hability.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hability_params
      params.require(:hability).permit(:name)
    end
end
