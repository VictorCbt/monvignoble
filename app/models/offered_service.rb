class OfferedService < ApplicationRecord
  belongs_to :investment

  validates :title, presence: true
  validates :description, presence: true
end
