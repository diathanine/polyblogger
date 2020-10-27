class ArticlesController < ApplicationController
  def index
    @articles=Article.all
  end

  def show
    @article = Article.find params[:id]
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find params[:id]
  end

  def create
    @article = Article.new article_params
  end

  private
  def article_params
    params.require(:article).permit(:title, :text) #article is only part of the total param set
  end
end
