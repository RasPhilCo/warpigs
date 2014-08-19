class Position < ActiveRecord::Base
  has_many :person_positions
  has_many :people, through: :person_positions
  has_many :company_positions
  has_many :companies, through: :company_positions
end
