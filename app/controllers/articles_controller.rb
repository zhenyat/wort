class ArticlesController < ApplicationController
  def index
    @definite_articles = Article.definite
    @indefinite_articles = Article.indefinite
  end
end
