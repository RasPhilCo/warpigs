class War < ActiveRecord::Base
  has_many :costs, class_name: "Profit",
                  foreign_key: "war_id",
                  inverse_of: :profits
  has_many :country_wars
  has_many :countries, through: :country_wars

end
