class HomesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  # GET /homes
  def index
    if params[:search]
      @homes =
        Home.search(params[:search]).page(params[:page]).per(10).order("created_at DESC")
    else
      @homes = Home.page(params[:page]).per(10).order("created_at DESC")
    end
  end

  # GET /homes/1
  def show
    @home = Home.find(params[:id])
  end

  # GET /homes/new
  def new
    @home = Home.new
  end

  # GET /homes/1/edit
  def edit
    @home = Home.find(params[:id])
  end

  # POST /homes
  def create
    @home = Home.new(home_params)
    @home.user = current_user

    if @home.save
      redirect_to @home, notice: 'Home was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /homes/1
  def update
    @home = Home.find(params[:id])
    if @home.update(home_params)
      redirect_to @home, notice: 'Home was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /homes/1
  def destroy
    @home = Home.find(params[:id])
    @home.destroy
    redirect_to homes_url, notice: 'Home was successfully destroyed.'
  end

  def favorite
    home = Home.find(params[:id])

    Favorite.create(home: home, user: current_user)

    Rails.logger.info "FAVORITING!!!!"
  end

  def unfavorite
    home = Home.find(params[:id])
    favorite = Favorite.find_by(home: home, user: current_user)

    favorite.destroy

    Rails.logger.info "UN FAVORITING!!!!"
  end

  private

  # Only allow a trusted parameter "white list" through.
  def home_params
    params.require(:home).permit(:address, :city, :state, :zipcode, :bedrooms, :bathroms, :squarefoot, :price, :description, :year_built, :created_by, :image)
  end
end
