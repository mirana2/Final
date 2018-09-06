class ArticleController < ApplicationController
  def new
    
  end
  
  def create
    @article = Article.new
    a = params[:article] 
    @article.category = Category.first
    @article.title = a[:title]
    @article.lien = a[:lien]
    @article.image_url = a[:image_url]
    @article.icon_url = a[:icon_url]
    @article.description = a[:description]
    @article.tuto = a[:tuto]
    @article.save
  end
end
