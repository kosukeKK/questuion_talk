class ArticlesCommentsController < ApplicationController

  def create_comment
    @article_comment = ArticleComment.new(body: params["body"])
    @article_comment.article = Article.find(params[:id])
    if @article_comment.save
      redirect_to(article_path(@article_comment.article_id))
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @article_comment = article_comment.find(params[:id])
    @article_comment.destroy
  end

  private
    def set_params
        params.require(:article_comment).permit(:body)
    end
end
