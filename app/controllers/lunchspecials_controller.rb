class LunchspecialsController < ApplicationController
  before_action :set_lunchspecial, only: [:show, :edit, :update, :destroy]

  # GET /lunchspecials
  # GET /lunchspecials.json
  def index
    @lunchspecials = Lunchspecial.all
  end

  # GET /lunchspecials/1
  # GET /lunchspecials/1.json
  def show
  end

  # GET /lunchspecials/new
  def new
    @lunchspecial = Lunchspecial.new
  end

  # GET /lunchspecials/1/edit
  def edit
  end

  # POST /lunchspecials
  # POST /lunchspecials.json
  def create
    @lunchspecial = Lunchspecial.new(lunchspecial_params)

    respond_to do |format|
      if @lunchspecial.save
        format.html { redirect_to @lunchspecial, notice: 'Lunchspecial was successfully created.' }
        format.json { render :show, status: :created, location: @lunchspecial }
      else
        format.html { render :new }
        format.json { render json: @lunchspecial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lunchspecials/1
  # PATCH/PUT /lunchspecials/1.json
  def update
    respond_to do |format|
      if @lunchspecial.update(lunchspecial_params)
        format.html { redirect_to @lunchspecial, notice: 'Lunchspecial was successfully updated.' }
        format.json { render :show, status: :ok, location: @lunchspecial }
      else
        format.html { render :edit }
        format.json { render json: @lunchspecial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lunchspecials/1
  # DELETE /lunchspecials/1.json
  def destroy
    @lunchspecial.destroy
    respond_to do |format|
      format.html { redirect_to lunchspecials_url, notice: 'Lunchspecial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lunchspecial
      @lunchspecial = Lunchspecial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lunchspecial_params
      params.require(:lunchspecial).permit(:name, :price, :img)
    end
end
