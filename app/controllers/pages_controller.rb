class PagesController < ApplicationController
  before_action :set_title
  def home  
  end

  def about
  end

  def contact
  end

  private

  def set_title
    @title = "Pages || Joungwoo baik"
  end
end
