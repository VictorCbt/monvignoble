class Group < ApplicationRecord
  belongs_to :admin, foreign_key: :user_id, class_name: "User"
  has_many :users_groups
  has_many :users, through: :users_groups

  belongs_to :investment, optional: true

  SERVICES = ["Découverte des vendanges",
    "Etiquette de bouteille personnalisée",
    "Invitation à la dégustation annuelle",
    "Visite du domaine",
    "Initiation au processus de vinification"]

  before_validation :clean_empty_services

  validates :name, presence: true , uniqueness: true
  validates :region, inclusion: { in: ["Alsace", "Beaujolais", "Bordeaux", "Bourgogne", "Champagne", "Corse", "Jura", "Languedoc-Roussillon", "Provence", "Savoie", "Sud-Ouest", "Vallée de la Loire", "Vallée du Rhône"] }, allow_nil: true
  validates :winemaker_profile, inclusion: { in: ["Jeune vigneron", "Vigneron installé"] }, allow_nil: true
  validate :services_inclusion

  private

  def clean_empty_services
    services.reject! { |x| x.blank? } if services
  end

  def services_inclusion
    return if services.blank?

    services.each do |service|
      errors.add(:services, "'#{service}' not include in authorized services") unless service.in?(SERVICES)
    end
  end
end


