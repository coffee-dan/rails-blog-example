# part of generated files 
# $ ruby .\bin\rails generate controller Articles index --skip-routes
# the flag at the end because an initial route was set up manually
class ArticlesController < ApplicationController
  def index
    # When an action does not explictly render a view (or otherwise trigger
    # an HTTP response), Rails will automatically render a view that matches
    # the name of the controller and action. 
    # thus app/views/articles/index.html.erb

    # defined controller to fetch all articles from database
    # controller instance variables can be accessed by teh view
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    # instantiates a new article but does not save it
    #   use in the view for building the form
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    # redirect_to is used when a fresh request is needed, such as
    # after a database change. otherwise render can be used
    if @article.save
      redirect_to @article
    else 
      # render the new article view, now with errors explaining why the creation failed
      render :new
    end
  end

  private
    def article_params
      # specific requirements for params hash, kinda like strong typing
      params.require(:article).permit(:title, :body)
    end
end
