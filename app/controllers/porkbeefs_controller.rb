class PorkbeefsController < ApplicationController
  before_action :set_porkbeef, only: [:show, :edit, :update, :destroy]

  # GET /porkbeefs
  # GET /porkbeefs.json
  def index
    @porkbeefs = Porkbeef.all
  end

  # GET /porkbeefs/1
  # GET /porkbeefs/1.json
  def show
  end

  # GET /porkbeefs/new
  def new
    @porkbeef = Porkbeef.new
  end

  # GET /porkbeefs/1/edit
  def edit
  end

  # POST /porkbeefs
  # POST /porkbeefs.json
  def create
    @porkbeef = Porkbeef.new(porkbeef_params)

    respond_to do |format|
      if @porkbeef.save
        format.html { redirect_to @porkbeef, notice: 'Porkbeef was successfully created.' }
        format.json { render :show, status: :created, location: @porkbeef }
      else
        format.html { render :new }
        format.json { render json: @porkbeef.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /porkbeefs/1
  # PATCH/PUT /porkbeefs/1.json
  def update
    respond_to do |format|
      if @porkbeef.update(porkbeef_params)
        format.html { redirect_to @porkbeef, notice: 'Porkbeef was successfully updated.' }
        format.json { render :show, status: :ok, location: @porkbeef }
      else
        format.html { render :edit }
        format.json { render json: @porkbeef.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /porkbeefs/1
  # DELETE /porkbeefs/1.json
  def destroy
    @porkbeef.destroy
    respond_to do |format|
      format.html { redirect_to porkbeefs_url, notice: 'Porkbeef was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_porkbeef
      @porkbeef = Porkbeef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def porkbeef_params
      params.require(:porkbeef).permit(:name, :price, :img)
    end
end
