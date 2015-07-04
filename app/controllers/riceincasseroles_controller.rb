class RiceincasserolesController < ApplicationController
  before_action :set_riceincasserole, only: [:show, :edit, :update, :destroy]

  # GET /riceincasseroles
  # GET /riceincasseroles.json
  def index
    @riceincasseroles = Riceincasserole.all
  end

  # GET /riceincasseroles/1
  # GET /riceincasseroles/1.json
  def show
  end

  # GET /riceincasseroles/new
  def new
    @riceincasserole = Riceincasserole.new
  end

  # GET /riceincasseroles/1/edit
  def edit
  end

  # POST /riceincasseroles
  # POST /riceincasseroles.json
  def create
    @riceincasserole = Riceincasserole.new(riceincasserole_params)

    respond_to do |format|
      if @riceincasserole.save
        format.html { redirect_to @riceincasserole, notice: 'Riceincasserole was successfully created.' }
        format.json { render :show, status: :created, location: @riceincasserole }
      else
        format.html { render :new }
        format.json { render json: @riceincasserole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /riceincasseroles/1
  # PATCH/PUT /riceincasseroles/1.json
  def update
    respond_to do |format|
      if @riceincasserole.update(riceincasserole_params)
        format.html { redirect_to @riceincasserole, notice: 'Riceincasserole was successfully updated.' }
        format.json { render :show, status: :ok, location: @riceincasserole }
      else
        format.html { render :edit }
        format.json { render json: @riceincasserole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riceincasseroles/1
  # DELETE /riceincasseroles/1.json
  def destroy
    @riceincasserole.destroy
    respond_to do |format|
      format.html { redirect_to riceincasseroles_url, notice: 'Riceincasserole was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_riceincasserole
      @riceincasserole = Riceincasserole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def riceincasserole_params
      params.require(:riceincasserole).permit(:name, :price, :img)
    end
end
