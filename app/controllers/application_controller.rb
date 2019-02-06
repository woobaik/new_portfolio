class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  include CurrentUser

  before_action :set_title

  def set_title
    @title ||= "Joungwoo Baik"
  end
end
