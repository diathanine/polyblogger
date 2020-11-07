class ProfilesController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
    @articles = Article.where(profile_id: params[:id])
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

  end

end
