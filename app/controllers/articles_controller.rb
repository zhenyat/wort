class ArticlesController < ApplicationController
  def index
    @cases = Case.all
    @definite_articles = Article.definite
    @indefinite_articles = Article.indefinite
  end
end
