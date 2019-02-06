module CurrentUser
  extend ActiveSupport::Concern

  included do
    before_action :current_user
  end

  protected

  def current_user
    super
    current_user ||= OpenStruct.new(first_name: 'Guest')
  end

end
