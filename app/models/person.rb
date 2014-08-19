class Person < ActiveRecord::Base
  has_many :profits, as: :profitable
  has_many :person_positions
  has_many :positions, through: :person_positions
  belongs_to :country
  has_many :company_people
  has_many :companies, through: :company_people
end
