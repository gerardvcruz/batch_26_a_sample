class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end 

  def show

  end

  def new
    @article = Article.new

    render :new
  end 

  def create
    @article = Article.new(article_params)

    if @article.save
      binding.pry
      redirect_to articles_path
    else
      render :new, status: :unprocessable_entity
    end
  end 

  def edit

  end 

  def update

  end 

  def delete

  end

  private
  def article_params
    params.require(:article).permit(:name, :body)
  end
end
