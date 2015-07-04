class RicedishesController < ApplicationController
  before_action :set_ricedish, only: [:show, :edit, :update, :destroy]

  # GET /ricedishes
  # GET /ricedishes.json
  def index
    @ricedishes = Ricedish.all
  end

  # GET /ricedishes/1
  # GET /ricedishes/1.json
  def show
  end

  # GET /ricedishes/new
  def new
    @ricedish = Ricedish.new
  end

  # GET /ricedishes/1/edit
  def edit
  end

  # POST /ricedishes
  # POST /ricedishes.json
  def create
    @ricedish = Ricedish.new(ricedish_params)

    respond_to do |format|
      if @ricedish.save
        format.html { redirect_to @ricedish, notice: 'Ricedish was successfully created.' }
        format.json { render :show, status: :created, location: @ricedish }
      else
        format.html { render :new }
        format.json { render json: @ricedish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ricedishes/1
  # PATCH/PUT /ricedishes/1.json
  def update
    respond_to do |format|
      if @ricedish.update(ricedish_params)
        format.html { redirect_to @ricedish, notice: 'Ricedish was successfully updated.' }
        format.json { render :show, status: :ok, location: @ricedish }
      else
        format.html { render :edit }
        format.json { render json: @ricedish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ricedishes/1
  # DELETE /ricedishes/1.json
  def destroy
    @ricedish.destroy
    respond_to do |format|
      format.html { redirect_to ricedishes_url, notice: 'Ricedish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ricedish
      @ricedish = Ricedish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ricedish_params
      params.require(:ricedish).permit(:name, :price, :img)
    end
end
