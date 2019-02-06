module SetTitle
  extend ActiveSupport::Concern

  included do
    before_action :set_title
  end

  protected

  def set_title
    @title ||= "Joungwoo Baik"
  end
end
