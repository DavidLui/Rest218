class LomeinsController < ApplicationController
  before_action :set_lomein, only: [:show, :edit, :update, :destroy]

  # GET /lomeins
  # GET /lomeins.json
  def index
    @lomeins = Lomein.all
  end

  # GET /lomeins/1
  # GET /lomeins/1.json
  def show
  end

  # GET /lomeins/new
  def new
    @lomein = Lomein.new
  end

  # GET /lomeins/1/edit
  def edit
  end

  # POST /lomeins
  # POST /lomeins.json
  def create
    @lomein = Lomein.new(lomein_params)

    respond_to do |format|
      if @lomein.save
        format.html { redirect_to @lomein, notice: 'Lomein was successfully created.' }
        format.json { render :show, status: :created, location: @lomein }
      else
        format.html { render :new }
        format.json { render json: @lomein.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lomeins/1
  # PATCH/PUT /lomeins/1.json
  def update
    respond_to do |format|
      if @lomein.update(lomein_params)
        format.html { redirect_to @lomein, notice: 'Lomein was successfully updated.' }
        format.json { render :show, status: :ok, location: @lomein }
      else
        format.html { render :edit }
        format.json { render json: @lomein.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lomeins/1
  # DELETE /lomeins/1.json
  def destroy
    @lomein.destroy
    respond_to do |format|
      format.html { redirect_to lomeins_url, notice: 'Lomein was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lomein
      @lomein = Lomein.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lomein_params
      params.require(:lomein).permit(:name, :price, :img)
    end
end
