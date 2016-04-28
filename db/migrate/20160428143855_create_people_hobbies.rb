class CreatePeopleHobbies < ActiveRecord::Migration
  def change
    create_table :people_hobbies do |t|
      t.references :person, foreign_key: true
      t.references :hobby, foreign_key: true
    end
  end
end
