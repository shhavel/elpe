require 'rho/rhocontroller'
require 'helpers/browser_helper'

class ArticleController < Rho::RhoController
  include BrowserHelper

  # GET /Article/{1}
  def show
    @article = Article.find(@params['id'])
    if @article
      render :action => :show, :back => url_for(:controller => :Category, :action => :show, :id => @article.category.object)
    else
      redirect :controller => :Category, :action => :index
    end
  end
end
