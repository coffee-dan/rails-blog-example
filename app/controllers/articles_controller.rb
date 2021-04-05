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
end
