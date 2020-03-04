class Group < ApplicationRecord
  belongs_to :admin, foreign_key: :user_id, class_name: "User"
  has_many :users_group
  has_many :user, through: :users_group
  belongs_to :selected_investment, foreign_key: :investment_id , class_name: "Investment"
  has_many :investments_groups, dependent: :destroy
  has_many :investments, through: :investments_groups
end
