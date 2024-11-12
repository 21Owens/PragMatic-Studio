class MoviesController < ApplicationController

  before_action :require_signin, except: [:index, :show]
  before_action :require_admin, except: [:index, :show]
  before_action :set_movie, only: [:show, :update, :edit, :destroy]

  def index
    case params[:filter]
    when "upcoming"
      @movies = Movie.upcoming
    when "flop"
      @movies = Movie.flops
    when "recent"
      @movies = Movie.recent
    when "hits"
      @movies = Movie.hits
    else
      @movies = Movie.all
    end
  end

  def show
    @genres = @movie.genres.order(:name)
    @fans = @movie.fans

    if current_user
      @favorite = current_user.favorites.find_by(movie_id: @movie.id)
    end
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: "Movie Successfully Updated!"
    else
      render :new, status: :unprocessable_entity
    end
  end


  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie, notice: "Movie Successfully Created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_url, status: :see_other

  end

private


  def set_movie
    @movie = Movie.find_by!(slug: params[:id])
  end


  def movie_params
    params.require(:movie).
      permit(:title, :description, :rating, :released_on, :total_gross,
             :director, :duration, :image_file_name, genre_ids: [])
  end

end
