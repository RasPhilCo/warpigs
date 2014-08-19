class PersonPosition < ActiveRecord::Base
  belongs_to :person
  belongs_to :position
end
