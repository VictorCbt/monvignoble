class Investment < ApplicationRecord
  has_many :investment_groups
  has_many  :groups, through: :investment_groups
  has_one :group, foreign_key: :selected_investment_id
  belongs_to :user
  has_many :service_offereds, dependent: :destroy
end
