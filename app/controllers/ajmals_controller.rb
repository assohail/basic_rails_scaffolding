class AjmalsController < ApplicationController
  before_action :set_ajmal, only: %i[ show edit update destroy ]

  # GET /ajmals or /ajmals.json
  def index
    @ajmals = Ajmal.all
  end

  # GET /ajmals/1 or /ajmals/1.json
  def show
  end

  # GET /ajmals/new
  def new
    @ajmal = Ajmal.new
  end

  # GET /ajmals/1/edit
  def edit
  end

  # POST /ajmals or /ajmals.json
  def create
    @ajmal = Ajmal.new(ajmal_params)

    respond_to do |format|
      if @ajmal.save
        format.html { redirect_to ajmal_url(@ajmal), notice: "Ajmal was successfully created." }
        format.json { render :show, status: :created, location: @ajmal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ajmal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ajmals/1 or /ajmals/1.json
  def update
    respond_to do |format|
      if @ajmal.update(ajmal_params)
        format.html { redirect_to ajmal_url(@ajmal), notice: "Ajmal was successfully updated." }
        format.json { render :show, status: :ok, location: @ajmal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ajmal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ajmals/1 or /ajmals/1.json
  def destroy
    @ajmal.destroy

    respond_to do |format|
      format.html { redirect_to ajmals_url, notice: "Ajmal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ajmal
      @ajmal = Ajmal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ajmal_params
      params.require(:ajmal).permit(:mobile, :foozbol)
    end
end
