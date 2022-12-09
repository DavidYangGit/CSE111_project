class MoviegenresController < ApplicationController
  before_action :set_moviegenre, only: %i[ show edit update destroy ]

  # GET /moviegenres or /moviegenres.json
  def index
    @moviegenres = Moviegenre.all
  end

  # GET /moviegenres/1 or /moviegenres/1.json
  def show
  end

  # GET /moviegenres/new
  def new
    @moviegenre = Moviegenre.new
  end

  # GET /moviegenres/1/edit
  def edit
  end

  # POST /moviegenres or /moviegenres.json
  def create
    @moviegenre = Moviegenre.new(moviegenre_params)

    respond_to do |format|
      if @moviegenre.save
        format.html { redirect_to moviegenre_url(@moviegenre), notice: "Moviegenre was successfully created." }
        format.json { render :show, status: :created, location: @moviegenre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @moviegenre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moviegenres/1 or /moviegenres/1.json
  def update
    respond_to do |format|
      if @moviegenre.update(moviegenre_params)
        format.html { redirect_to moviegenre_url(@moviegenre), notice: "Moviegenre was successfully updated." }
        format.json { render :show, status: :ok, location: @moviegenre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @moviegenre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moviegenres/1 or /moviegenres/1.json
  def destroy
    @moviegenre.destroy

    respond_to do |format|
      format.html { redirect_to moviegenres_url, notice: "Moviegenre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moviegenre
      @moviegenre = Moviegenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def moviegenre_params
      params.require(:moviegenre).permit(:mg_genreid, :mg_movieid)
    end
end
