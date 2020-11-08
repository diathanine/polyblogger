class ProfilesController < ApplicationController
  def show
    logger.info 'tasty'
    @profile = Profile.find(params[:id])
    @articles = Article.where(profile_id: params[:id]).order(created_at: :desc)
  end

  def new
    @profile = Profile.new
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def create
    @profile = Profile.new profile_params
  end

  def update
    @profile = Profile.find(params[:id])
    logger.info "FUCK"
    if @profile.update (profile_params)
      redirect_to @profile
    else
      render 'edit'
    end

  end

  private

  def profile_params
    params.require(:profile).permit(:bio, :user_id)
  end
end
