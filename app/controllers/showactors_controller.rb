class ShowactorsController < ApplicationController
  before_action :set_showactor, only: %i[ show edit update destroy ]

  # GET /showactors or /showactors.json
  def index
    @showactors = Showactor.all
  end

  # GET /showactors/1 or /showactors/1.json
  def show
  end

  # GET /showactors/new
  def new
    @showactor = Showactor.new
  end

  # GET /showactors/1/edit
  def edit
  end

  # POST /showactors or /showactors.json
  def create
    @showactor = Showactor.new(showactor_params)

    respond_to do |format|
      if @showactor.save
        format.html { redirect_to showactor_url(@showactor), notice: "Showactor was successfully created." }
        format.json { render :show, status: :created, location: @showactor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @showactor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showactors/1 or /showactors/1.json
  def update
    respond_to do |format|
      if @showactor.update(showactor_params)
        format.html { redirect_to showactor_url(@showactor), notice: "Showactor was successfully updated." }
        format.json { render :show, status: :ok, location: @showactor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @showactor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showactors/1 or /showactors/1.json
  def destroy
    @showactor.destroy

    respond_to do |format|
      format.html { redirect_to showactors_url, notice: "Showactor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showactor
      @showactor = Showactor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def showactor_params
      params.require(:showactor).permit(:sa_showid, :sa_actorid)
    end
end
