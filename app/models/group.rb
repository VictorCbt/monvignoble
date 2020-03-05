class Group < ApplicationRecord
  belongs_to :admin, foreign_key: :user_id, class_name: "User"
  has_many :users_groups
  has_many :users, through: :users_groups
  belongs_to :selected_investment, foreign_key: :investment_id , class_name: "Investment"
  has_many :investments_groups, dependent: :destroy
  has_many :investments, through: :investments_groups
end
