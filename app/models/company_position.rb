class CompanyPosition < ActiveRecord::Base
  belongs_to :company
  belongs_to :position
end
