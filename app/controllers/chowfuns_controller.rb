class ChowfunsController < ApplicationController
  before_action :set_chowfun, only: [:show, :edit, :update, :destroy]

  # GET /chowfuns
  # GET /chowfuns.json
  def index
    @chowfuns = Chowfun.all
  end

  # GET /chowfuns/1
  # GET /chowfuns/1.json
  def show
  end

  # GET /chowfuns/new
  def new
    @chowfun = Chowfun.new
  end

  # GET /chowfuns/1/edit
  def edit
  end

  # POST /chowfuns
  # POST /chowfuns.json
  def create
    @chowfun = Chowfun.new(chowfun_params)

    respond_to do |format|
      if @chowfun.save
        format.html { redirect_to @chowfun, notice: 'Chowfun was successfully created.' }
        format.json { render :show, status: :created, location: @chowfun }
      else
        format.html { render :new }
        format.json { render json: @chowfun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chowfuns/1
  # PATCH/PUT /chowfuns/1.json
  def update
    respond_to do |format|
      if @chowfun.update(chowfun_params)
        format.html { redirect_to @chowfun, notice: 'Chowfun was successfully updated.' }
        format.json { render :show, status: :ok, location: @chowfun }
      else
        format.html { render :edit }
        format.json { render json: @chowfun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chowfuns/1
  # DELETE /chowfuns/1.json
  def destroy
    @chowfun.destroy
    respond_to do |format|
      format.html { redirect_to chowfuns_url, notice: 'Chowfun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chowfun
      @chowfun = Chowfun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chowfun_params
      params.require(:chowfun).permit(:name, :price, :img)
    end
end
