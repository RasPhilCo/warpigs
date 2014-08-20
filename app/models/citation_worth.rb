class CitationWorth < ActiveRecord::Base
  belongs_to :citation
  belongs_to :worth
end
