class Stamp < ApplicationRecord

  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :design
  belongs_to :stamp_color
  belongs_to :paper_color
  belongs_to :set_time

  with_options presence: true do
    validates :image
    validates :number, numericality: { only_integer: true, greater_than: 0 }
    validates :name
    validates :height, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 350, message: "must be between 0 and 350" }
    validates :width, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 480, message: "must be between 0 and 480" }
    validates :design_id, numericality: { other_than: 1, message: "must be other than 1" }
    validates :stamp_color_id, numericality: { other_than: 1, message: "must be other than 1" }
    validates :stamp_number
    validates :paper_color_id, numericality: { other_than: 1, message: "must be other than 1" }
    validates :paper_name
    validates :paper_weight
    validates :temperature, numericality: { greater_than: 0 }
    validates :push_time, numericality: { greater_than: 0 }
    validates :set_time_id, numericality: { other_than: 1, message: "must be other than 1" }
    validates :push_pressure
  end


end
