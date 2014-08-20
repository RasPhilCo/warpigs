class Citation < ActiveRecord::Base
  has_many :citation_profits
  has_many :profits, through: :citation_profits
  has_many :citation_worths
  has_many :citations, through: :citation_worths
end
