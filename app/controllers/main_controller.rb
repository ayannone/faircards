class MainController < ApplicationController

  def home
  end

  def greeting_cards
    @articles = Article.where(:article_group_id => "1")
  end

end
