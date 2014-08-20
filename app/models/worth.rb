class Worth < ActiveRecord::Base
  belongs_to :worthable, polymorphic: true
  has_many :citation_worths
  has_many :citations, through: :citation_worths
end
