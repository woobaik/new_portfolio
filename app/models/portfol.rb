class Portfol < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
    reject_if: lambda { |attributes| attributes[:name].blank?}

  include Placeholder
  validates :title, :subtitle,
            :body, :main_image,
            :thumb_image,
            presence: true

  after_initialize :set_defaults

  def self.by_position
    order(:position)
  end

  def set_defaults
    self.main_image ||= Placeholder.image_generator('600', '400')
    self.thumb_image ||= Placeholder.image_generator('350', '200')
  end
  
  mount_uploader :main_image, PortfolUploader
  mount_uploader :main_image, PortfolUploader
end
