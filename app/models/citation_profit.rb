class CitationProfit < ActiveRecord::Base
  belongs_to :citation
  belongs_to :profit
end
