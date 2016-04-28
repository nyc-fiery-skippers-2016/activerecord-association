class Job < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :person
end
