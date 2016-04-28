class AddNewColumnToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :person_id, :reference, foreign_key: true
  end
end
