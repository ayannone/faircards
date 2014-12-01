class ArticleGroupsController < ApplicationController

  def index
    @article_groups = ArticleGroup.all
  end

  def new
    @article_group = ArticleGroup.new
  end

  def create
    @article_group = ArticleGroup.new(article_group_params)
    if @article_group.save
      redirect_to @article_group
    else
      render 'new'
    end
  end

  def edit
    @article_group = ArticleGroup.find(params[:id])
  end

  def update
    @article_group = ArticleGroup.find(params[:id])
    @article_group.update(article_group_params)
    if @article_group.save
      redirect_to @article_group
    else
      render 'edit'
    end
  end

  def show
    @article_group = ArticleGroup.find(params[:id])
  end

  def destroy
  end

  private

  def article_group_params
    params.require(:article_group).permit(:name)
  end

end
