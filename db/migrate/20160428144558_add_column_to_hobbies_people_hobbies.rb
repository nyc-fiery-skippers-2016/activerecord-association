class AddColumnToHobbiesPeopleHobbies < ActiveRecord::Migration
  def change
    add_column :hobbies, :created_at, :timestamp
    add_column :hobbies, :updated_at, :timestamp
    add_column :people_hobbies, :created_at, :timestamp
    add_column :people_hobbies, :updated_at, :timestamp

  end
end
