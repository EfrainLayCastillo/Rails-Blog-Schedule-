class ArticlesController < ApplicationController
  #GET /articles
  def index
    @articles = Article.all
  end

  #GET /articles/:id
  def show
    @article = Article.find(params[:id])
  end

  #GET /article/new
  def new
    @article = Article.new
  end

  #POST /article
  def create
    @article = Article.new(title: params[:article][:title],
                          body: params[:article][:body])

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy #Elimina datos de la base de datos
    redirect_to articles_path
  end

  def update
    # @article.update_attributes({title: 'nuevo titulo'})
  end
end
