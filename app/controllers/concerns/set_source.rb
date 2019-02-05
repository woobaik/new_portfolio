module SetSource
  extend ActiveSupport::Concern

  included do
    before_action :set_source
  end

  protected
  
  def set_source
    session[:source] = params[:q] if params[:q]
  end
end
