class Company < ActiveRecord::Base
  belongs_to :country
  has_many :company_people
  has_many :people, through: :company_people
  has_many :profits, as: :profitable
  has_many :company_positions
  has_many :positions, through: :company_positions
  has_many :worths, as: :worthable
end
