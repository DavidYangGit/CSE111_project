class ShowgenresController < ApplicationController
  before_action :set_showgenre, only: %i[ show edit update destroy ]

  # GET /showgenres or /showgenres.json
  def index
    @showgenres = Showgenre.all
  end

  # GET /showgenres/1 or /showgenres/1.json
  def show
  end

  # GET /showgenres/new
  def new
    @showgenre = Showgenre.new
  end

  # GET /showgenres/1/edit
  def edit
  end

  # POST /showgenres or /showgenres.json
  def create
    @showgenre = Showgenre.new(showgenre_params)

    respond_to do |format|
      if @showgenre.save
        format.html { redirect_to showgenre_url(@showgenre), notice: "Showgenre was successfully created." }
        format.json { render :show, status: :created, location: @showgenre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @showgenre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showgenres/1 or /showgenres/1.json
  def update
    respond_to do |format|
      if @showgenre.update(showgenre_params)
        format.html { redirect_to showgenre_url(@showgenre), notice: "Showgenre was successfully updated." }
        format.json { render :show, status: :ok, location: @showgenre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @showgenre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showgenres/1 or /showgenres/1.json
  def destroy
    @showgenre.destroy

    respond_to do |format|
      format.html { redirect_to showgenres_url, notice: "Showgenre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showgenre
      @showgenre = Showgenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def showgenre_params
      params.require(:showgenre).permit(:sg_genreid, :sg_showid)
    end
end
