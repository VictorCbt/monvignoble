class OfferedService < ApplicationRecord
  CATEGORIES = ["Découverte des vendanges",
    "Etiquette de bouteille personnalisée",
    "Invitation à la dégustation annuelle",
    "Visite du domaine",
    "Initiation au processus de vinification"]

  belongs_to :investment

  validates :title, presence: true, inclusion: { in: CATEGORIES }
  validates :description, presence: true
end

