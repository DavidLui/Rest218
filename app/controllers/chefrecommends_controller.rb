class ChefrecommendsController < ApplicationController
  before_action :set_chefrecommend, only: [:show, :edit, :update, :destroy]

  # GET /chefrecommends
  # GET /chefrecommends.json
  def index
    @chefrecommends = Chefrecommend.all
  end

  # GET /chefrecommends/1
  # GET /chefrecommends/1.json
  def show
  end

  # GET /chefrecommends/new
  def new
    @chefrecommend = Chefrecommend.new
  end

  # GET /chefrecommends/1/edit
  def edit
  end

  # POST /chefrecommends
  # POST /chefrecommends.json
  def create
    @chefrecommend = Chefrecommend.new(chefrecommend_params)

    respond_to do |format|
      if @chefrecommend.save
        format.html { redirect_to @chefrecommend, notice: 'Chefrecommend was successfully created.' }
        format.json { render :show, status: :created, location: @chefrecommend }
      else
        format.html { render :new }
        format.json { render json: @chefrecommend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chefrecommends/1
  # PATCH/PUT /chefrecommends/1.json
  def update
    respond_to do |format|
      if @chefrecommend.update(chefrecommend_params)
        format.html { redirect_to @chefrecommend, notice: 'Chefrecommend was successfully updated.' }
        format.json { render :show, status: :ok, location: @chefrecommend }
      else
        format.html { render :edit }
        format.json { render json: @chefrecommend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chefrecommends/1
  # DELETE /chefrecommends/1.json
  def destroy
    @chefrecommend.destroy
    respond_to do |format|
      format.html { redirect_to chefrecommends_url, notice: 'Chefrecommend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chefrecommend
      @chefrecommend = Chefrecommend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chefrecommend_params
      params.require(:chefrecommend).permit(:name, :price, :img)
    end
end
