class MaturesController < ApplicationController
  before_action :set_mature, only: [:show, :edit, :update, :destroy]

  # GET /matures
  def index
    @matures = Mature.all
  end

  # GET /matures/1
  def show
  end

  # GET /matures/new
  def new
    @mature = Mature.new
  end

  # GET /matures/1/edit
  def edit
  end

  # POST /matures
  def create
    @mature = Mature.new(mature_params)

    if @mature.save
      redirect_to @mature, notice: 'Mature was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /matures/1
  def update
    if @mature.update(mature_params)
      redirect_to @mature, notice: 'Mature was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /matures/1
  def destroy
    @mature.destroy
    redirect_to matures_url, notice: 'Mature was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mature
      @mature = Mature.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mature_params
      params.require(:mature).permit(:idea_id)
    end
end
