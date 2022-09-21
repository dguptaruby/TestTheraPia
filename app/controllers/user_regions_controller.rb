# frozen_string_literal: true

class UserRegionsController < ApplicationController
  before_action :set_user_region, only: %i[show edit update destroy]

  # GET /user_regions or /user_regions.json
  def index
    @user_regions = if current_user.is_admin?
                      UserRegion.all
                    elsif current_user.is_manager?
                      UserRegion.where(user_id: current_user.id)
                    else
                      UserRegion.where(id: current_user.id)
                    end
  end

  # GET /user_regions/1 or /user_regions/1.json
  def show; end

  # GET /user_regions/new
  def new
    @user_region = UserRegion.new
  end

  # GET /user_regions/1/edit
  def edit; end

  # POST /user_regions or /user_regions.json
  def create
    @user_region = UserRegion.new(user_region_params)

    respond_to do |format|
      if @user_region.save
        format.html { redirect_to user_region_url(@user_region), notice: 'User region was successfully created.' }
        format.json { render :show, status: :created, location: @user_region }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_region.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_regions/1 or /user_regions/1.json
  def update
    respond_to do |format|
      if @user_region.update(user_region_params)
        format.html { redirect_to user_region_url(@user_region), notice: 'User region was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_region }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_region.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_regions/1 or /user_regions/1.json
  def destroy
    @user_region.destroy

    respond_to do |format|
      format.html { redirect_to user_regions_url, notice: 'User region was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user_region
    @user_region = UserRegion.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_region_params
    params.require(:user_region).permit(:user_id, :region_id)
  end
end
