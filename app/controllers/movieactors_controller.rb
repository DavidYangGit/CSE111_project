class MovieactorsController < ApplicationController
  before_action :set_movieactor, only: %i[ show edit update destroy ]

  # GET /movieactors or /movieactors.json
  def index
    @movieactors = Movieactor.all
  end

  # GET /movieactors/1 or /movieactors/1.json
  def show
  end

  # GET /movieactors/new
  def new
    @movieactor = Movieactor.new
  end

  # GET /movieactors/1/edit
  def edit
  end

  # POST /movieactors or /movieactors.json
  def create
    @movieactor = Movieactor.new(movieactor_params)

    respond_to do |format|
      if @movieactor.save
        format.html { redirect_to movieactor_url(@movieactor), notice: "Movieactor was successfully created." }
        format.json { render :show, status: :created, location: @movieactor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movieactor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movieactors/1 or /movieactors/1.json
  def update
    respond_to do |format|
      if @movieactor.update(movieactor_params)
        format.html { redirect_to movieactor_url(@movieactor), notice: "Movieactor was successfully updated." }
        format.json { render :show, status: :ok, location: @movieactor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movieactor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movieactors/1 or /movieactors/1.json
  def destroy
    @movieactor.destroy

    respond_to do |format|
      format.html { redirect_to movieactors_url, notice: "Movieactor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movieactor
      @movieactor = Movieactor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movieactor_params
      params.require(:movieactor).permit(:ma_movieid, :ma_actorid)
    end
end
