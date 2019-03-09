class PagesController < ApplicationController
  before_action :set_title
  def home
  end

  def about
  end

  def contact
  end
  
  def tech_tweet
    @tweets = SocialTool.twitter_search
  end

  private

  def set_title
    @title = "Pages || Joungwoo baik"
  end
end
