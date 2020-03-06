class UsersGroup < ApplicationRecord
  belongs_to :user
  belongs_to :group

  STATUSLIST = ["pending",
  "validate",
  "waiting"]

  validates :status, presence: true, inclusion: { in: STATUSLIST }
end
