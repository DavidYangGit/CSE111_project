class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy ]

  # GET /movies or /movies.json
  #these functions allow the search bars to filter based on certain data
  def index
    @movies = Movie.all
    @movies = Movie.mtsearch(params[:mtsearch]) if params[:mtsearch].present?
    @movies = Movie.mssearch(params[:mssearch]) if params[:mssearch].present?
    @movies = Movie.mdsearch(params[:mdsearch]) if params[:mdsearch].present?
    @movies = Movie.mgsearch(params[:mgsearch]) if params[:mgsearch].present?
    @movies = Movie.masearch(params[:masearch]) if params[:masearch].present?
  end

  # GET /movies/1 or /movies/1.json
  def show
  end

  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies or /movies.json
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to movie_url(@movie), notice: "Movie was successfully created." }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1 or /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to movie_url(@movie), notice: "Movie was successfully updated." }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1 or /movies/1.json
  def destroy
    @movie.destroy

    respond_to do |format|
      format.html { redirect_to movies_url, notice: "Movie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_params
      params.require(:movie).permit(:m_title, :m_releaseDate, :m_studio, :m_director, :m_movieid, :mtsearch, :mssearch, :mdsearch, :mgsearch, :masearch)
    end

  
end
