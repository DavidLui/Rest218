class SizzlingplatesController < ApplicationController
  before_action :set_sizzlingplate, only: [:show, :edit, :update, :destroy]

  # GET /sizzlingplates
  # GET /sizzlingplates.json
  def index
    @sizzlingplates = Sizzlingplate.all
  end

  # GET /sizzlingplates/1
  # GET /sizzlingplates/1.json
  def show
  end

  # GET /sizzlingplates/new
  def new
    @sizzlingplate = Sizzlingplate.new
  end

  # GET /sizzlingplates/1/edit
  def edit
  end

  # POST /sizzlingplates
  # POST /sizzlingplates.json
  def create
    @sizzlingplate = Sizzlingplate.new(sizzlingplate_params)

    respond_to do |format|
      if @sizzlingplate.save
        format.html { redirect_to @sizzlingplate, notice: 'Sizzlingplate was successfully created.' }
        format.json { render :show, status: :created, location: @sizzlingplate }
      else
        format.html { render :new }
        format.json { render json: @sizzlingplate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sizzlingplates/1
  # PATCH/PUT /sizzlingplates/1.json
  def update
    respond_to do |format|
      if @sizzlingplate.update(sizzlingplate_params)
        format.html { redirect_to @sizzlingplate, notice: 'Sizzlingplate was successfully updated.' }
        format.json { render :show, status: :ok, location: @sizzlingplate }
      else
        format.html { render :edit }
        format.json { render json: @sizzlingplate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sizzlingplates/1
  # DELETE /sizzlingplates/1.json
  def destroy
    @sizzlingplate.destroy
    respond_to do |format|
      format.html { redirect_to sizzlingplates_url, notice: 'Sizzlingplate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sizzlingplate
      @sizzlingplate = Sizzlingplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sizzlingplate_params
      params.require(:sizzlingplate).permit(:name, :price, :img)
    end
end
