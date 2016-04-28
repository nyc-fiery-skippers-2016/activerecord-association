class Hobby < ActiveRecord::Base
  # Remember to create a migration!
  has_and_belongs_to_many :people
end
