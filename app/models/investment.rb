class Investment < ApplicationRecord
  has_many :investments_groups
  has_many  :groups, through: :investments_groups
  has_one :group, foreign_key: :selected_investment_id
  belongs_to :user
  has_many :offered_services, dependent: :destroy
end
