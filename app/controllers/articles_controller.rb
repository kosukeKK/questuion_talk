class ArticlesController < ApplicationController

  def index
  end

  def show
    @article = Article.find(params[:id])
    @articleComment = ArticleComment.new
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(set_params)
    @article.user = current_user
    if @article.save
      redirect_to(article_path(@article))
    end
  end

  # def edit
  # end
  #
  # def update
  # end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

  private
    def set_params
      params.require(:article).permit(:title, :description, :flg_under_18)
    end
end
