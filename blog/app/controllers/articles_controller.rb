# Controller directs traffic to view and models, it query models for data from the database and display the desired result
# with the help of view in an application
class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "usman", password: "usman", except: [:index, :show]
  def index
    @articles = Article.all # action uses the Article model to fetch all articles in the database.

  end
  def show
    @article = Article.find(params[:id])
  end
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path, status: :see_other
  end
  private
  def article_params
    params.require(:article).permit(:title, :body, :status)
  end
end
