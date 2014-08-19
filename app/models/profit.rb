class Profit < ActiveRecord::Base
  belongs_to :profitable, polymorphic: true
  belongs_to :war
  has_many :citation_profits
  has_many :citations, through: :citation_profits

end
