class Group < ApplicationRecord
  belongs_to :admin, foreign_key: :user_id, class_name: "User"
  has_many :users_groups
  has_many :users, through: :users_groups
  belongs_to :selected_investment, foreign_key: :investment_id , class_name: "Investment", optional: true
  has_many :investments_groups, dependent: :destroy
  has_many :investments, through: :investments_groups

  SERVICES = ["Découverte des vendanges",
    "Etiquette de bouteille personnalisée",
    "Invitation à la dégustation annuelle",
    "Visite du domaine",
    "Initiation au processus de vinification"]

  validates :name, presence: true , uniqueness: true
  validates :region, inclusion: { in: ["Alsace", "Beaujolais", "Bordeaux", "Bourgogne", "Champagne", "Corse", "Jura", "Languedoc-Roussillon", "Provence", "Savoie", "Sud-Ouest", "Vallée de la Loire", "Vallée du Rhône"] }, allow_nil: true
  validates :services, inclusion: { in: SERVICES }, allow_nil: true
  validates :winemaker_profile, inclusion: { in: ["Jeune vigneron", "Vigneron installé"] }, allow_nil: true
end


