class ChickenducksController < ApplicationController
  before_action :set_chickenduck, only: [:show, :edit, :update, :destroy]

  # GET /chickenducks
  # GET /chickenducks.json
  def index
    @chickenducks = Chickenduck.all
  end

  # GET /chickenducks/1
  # GET /chickenducks/1.json
  def show
  end

  # GET /chickenducks/new
  def new
    @chickenduck = Chickenduck.new
  end

  # GET /chickenducks/1/edit
  def edit
  end

  # POST /chickenducks
  # POST /chickenducks.json
  def create
    @chickenduck = Chickenduck.new(chickenduck_params)

    respond_to do |format|
      if @chickenduck.save
        format.html { redirect_to @chickenduck, notice: 'Chickenduck was successfully created.' }
        format.json { render :show, status: :created, location: @chickenduck }
      else
        format.html { render :new }
        format.json { render json: @chickenduck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chickenducks/1
  # PATCH/PUT /chickenducks/1.json
  def update
    respond_to do |format|
      if @chickenduck.update(chickenduck_params)
        format.html { redirect_to @chickenduck, notice: 'Chickenduck was successfully updated.' }
        format.json { render :show, status: :ok, location: @chickenduck }
      else
        format.html { render :edit }
        format.json { render json: @chickenduck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chickenducks/1
  # DELETE /chickenducks/1.json
  def destroy
    @chickenduck.destroy
    respond_to do |format|
      format.html { redirect_to chickenducks_url, notice: 'Chickenduck was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chickenduck
      @chickenduck = Chickenduck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chickenduck_params
      params.require(:chickenduck).permit(:name, :price, :img)
    end
end
