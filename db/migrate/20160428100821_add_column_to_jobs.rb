class AddColumnToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :position_id, :integer
  end
end
