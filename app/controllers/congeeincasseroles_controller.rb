class CongeeincasserolesController < ApplicationController
  before_action :set_congeeincasserole, only: [:show, :edit, :update, :destroy]

  # GET /congeeincasseroles
  # GET /congeeincasseroles.json
  def index
    @congeeincasseroles = Congeeincasserole.all
  end

  # GET /congeeincasseroles/1
  # GET /congeeincasseroles/1.json
  def show
  end

  # GET /congeeincasseroles/new
  def new
    @congeeincasserole = Congeeincasserole.new
  end

  # GET /congeeincasseroles/1/edit
  def edit
  end

  # POST /congeeincasseroles
  # POST /congeeincasseroles.json
  def create
    @congeeincasserole = Congeeincasserole.new(congeeincasserole_params)

    respond_to do |format|
      if @congeeincasserole.save
        format.html { redirect_to @congeeincasserole, notice: 'Congeeincasserole was successfully created.' }
        format.json { render :show, status: :created, location: @congeeincasserole }
      else
        format.html { render :new }
        format.json { render json: @congeeincasserole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /congeeincasseroles/1
  # PATCH/PUT /congeeincasseroles/1.json
  def update
    respond_to do |format|
      if @congeeincasserole.update(congeeincasserole_params)
        format.html { redirect_to @congeeincasserole, notice: 'Congeeincasserole was successfully updated.' }
        format.json { render :show, status: :ok, location: @congeeincasserole }
      else
        format.html { render :edit }
        format.json { render json: @congeeincasserole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congeeincasseroles/1
  # DELETE /congeeincasseroles/1.json
  def destroy
    @congeeincasserole.destroy
    respond_to do |format|
      format.html { redirect_to congeeincasseroles_url, notice: 'Congeeincasserole was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_congeeincasserole
      @congeeincasserole = Congeeincasserole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def congeeincasserole_params
      params.require(:congeeincasserole).permit(:name, :price, :img)
    end
end
