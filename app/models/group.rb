class Group < ApplicationRecord
  belongs_to :admin, foreign_key: :user_id, class_name: "User"
  has_many :users_groups
  has_many :users, through: :users_groups
  belongs_to :selected_investment, foreign_key: :investment_id , class_name: "Investment", optional: true
  has_many :investments_groups, dependent: :destroy
  has_many :investments, through: :investments_groups

  validates :name, presence: true , uniqueness: true
  validates :status, presence: true
  validates :region, inclusion: { in: ["Alsace", "Beaujolais", "Bordeaux", "Bourgogne", "Champagne", "Corse", "Jura", "Languedoc-Roussillon", "Vallée de la Loire", "Provence", "Savoie", "Vallée du Rhône", "Sud-Ouest"] }, allow_nil: true
  validates :winemaker_profile, inclusion: { in: ["Jeune vigneron", "Vigneron installé"] }, allow_nil: true
end
