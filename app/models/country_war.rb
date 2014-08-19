class CountryWar < ActiveRecord::Base
  belongs_to :war
  belongs_to :country
end
