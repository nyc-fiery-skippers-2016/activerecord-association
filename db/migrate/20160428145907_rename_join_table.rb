class RenameJoinTable < ActiveRecord::Migration
  def change
    rename_table(:people_hobbies, :hobbies_people)
  end
end
