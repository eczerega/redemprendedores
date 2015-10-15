class UserHabilitiesController < ApplicationController
  before_action :set_user_hability, only: [:show, :edit, :update, :destroy]

  # GET /user_habilities
  def index
    @user_habilities = UserHability.all
  end

  # GET /user_habilities/1
  def show
  end

  # GET /user_habilities/new
  def new
    @user_hability = UserHability.new
  end

  # GET /user_habilities/1/edit
  def edit
  end

  # POST /user_habilities
  def create
    @user_hability = UserHability.new(user_hability_params)

    if @user_hability.save
      redirect_to @user_hability, notice: 'User hability was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /user_habilities/1
  def update
    if @user_hability.update(user_hability_params)
      redirect_to @user_hability, notice: 'User hability was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /user_habilities/1
  def destroy
    @user_hability.destroy
    redirect_to user_habilities_url, notice: 'User hability was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_hability
      @user_hability = UserHability.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_hability_params
      params.require(:user_hability).permit(:user_id, :hability_id)
    end
end
