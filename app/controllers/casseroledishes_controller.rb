class CasseroledishesController < ApplicationController
  before_action :set_casseroledish, only: [:show, :edit, :update, :destroy]

  # GET /casseroledishes
  # GET /casseroledishes.json
  def index
    @casseroledishes = Casseroledish.all
  end

  # GET /casseroledishes/1
  # GET /casseroledishes/1.json
  def show
  end

  # GET /casseroledishes/new
  def new
    @casseroledish = Casseroledish.new
  end

  # GET /casseroledishes/1/edit
  def edit
  end

  # POST /casseroledishes
  # POST /casseroledishes.json
  def create
    @casseroledish = Casseroledish.new(casseroledish_params)

    respond_to do |format|
      if @casseroledish.save
        format.html { redirect_to @casseroledish, notice: 'Casseroledish was successfully created.' }
        format.json { render :show, status: :created, location: @casseroledish }
      else
        format.html { render :new }
        format.json { render json: @casseroledish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casseroledishes/1
  # PATCH/PUT /casseroledishes/1.json
  def update
    respond_to do |format|
      if @casseroledish.update(casseroledish_params)
        format.html { redirect_to @casseroledish, notice: 'Casseroledish was successfully updated.' }
        format.json { render :show, status: :ok, location: @casseroledish }
      else
        format.html { render :edit }
        format.json { render json: @casseroledish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casseroledishes/1
  # DELETE /casseroledishes/1.json
  def destroy
    @casseroledish.destroy
    respond_to do |format|
      format.html { redirect_to casseroledishes_url, notice: 'Casseroledish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_casseroledish
      @casseroledish = Casseroledish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def casseroledish_params
      params.require(:casseroledish).permit(:name, :price, :img)
    end
end
