class Portfol < ApplicationRecord
  include Placeholder
  validates :title, :subtitle,
            :body, :main_image,
            :thumb_image,
            presence: true

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator('600', '400')
    self.thumb_image ||= Placeholder.image_generator('350', '200')
  end
end
