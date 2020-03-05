class InvestmentsGroup < ApplicationRecord
  belongs_to :investment
  belongs_to :group
end
