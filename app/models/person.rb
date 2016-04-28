class Person < ActiveRecord::Base
  # Remember to create a migration!
  has_many :jobs
  has_and_belongs_to_many :hobbies
end
