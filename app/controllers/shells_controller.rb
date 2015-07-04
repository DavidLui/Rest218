class ShellsController < ApplicationController
  before_action :set_shell, only: [:show, :edit, :update, :destroy]

  # GET /shells
  # GET /shells.json
  def index
    @shells = Shell.all
  end

  # GET /shells/1
  # GET /shells/1.json
  def show
  end

  # GET /shells/new
  def new
    @shell = Shell.new
  end

  # GET /shells/1/edit
  def edit
  end

  # POST /shells
  # POST /shells.json
  def create
    @shell = Shell.new(shell_params)

    respond_to do |format|
      if @shell.save
        format.html { redirect_to @shell, notice: 'Shell was successfully created.' }
        format.json { render :show, status: :created, location: @shell }
      else
        format.html { render :new }
        format.json { render json: @shell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shells/1
  # PATCH/PUT /shells/1.json
  def update
    respond_to do |format|
      if @shell.update(shell_params)
        format.html { redirect_to @shell, notice: 'Shell was successfully updated.' }
        format.json { render :show, status: :ok, location: @shell }
      else
        format.html { render :edit }
        format.json { render json: @shell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shells/1
  # DELETE /shells/1.json
  def destroy
    @shell.destroy
    respond_to do |format|
      format.html { redirect_to shells_url, notice: 'Shell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shell
      @shell = Shell.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shell_params
      params.require(:shell).permit(:name, :price, :img)
    end
end
