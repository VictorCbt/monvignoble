class Investment < ApplicationRecord
  has_many :investments_groups
  has_many :groups, through: :investments_groups
  has_one :group, foreign_key: :selected_investment_id
  belongs_to :user
  has_many :offered_services, dependent: :destroy

  has_one_attached :photo

  validates :investment_name, presence: true, uniqueness: true
  validates :punchline, presence: true, uniqueness: true
  validates :winemaker_name, presence: true
  validates :domaine_name, presence: true
  validates :description, presence: true
  validates :region, presence: true, inclusion: { in: ["Alsace", "Beaujolais", "Bordeaux", "Bourgogne", "Champagne", "Corse", "Jura", "Languedoc-Roussillon", "Provence", "Savoie", "Sud-Ouest", "Vallée de la Loire", "Vallée du Rhône"] }, allow_nil: true
  validates :designation, presence: true
  validates :ticket_amount, presence: true
  validates :investment_total, presence: true
  validates :share_available, presence: true
  validates :total_share, presence: true
  validates :remuneration, presence: true
  validates :winemaker_profile, presence: true, inclusion: { in: ["Jeune vigneron", "Vigneron installé"] }, allow_nil: true

  attr_accessor :match
end





