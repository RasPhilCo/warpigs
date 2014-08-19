class Country < ActiveRecord::Base
  has_many :people
  has_many :companies
  has_many :country_wars
  has_many :wars, through: :country_wars
end
