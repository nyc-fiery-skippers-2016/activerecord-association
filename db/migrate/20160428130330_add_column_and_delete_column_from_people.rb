 class AddColumnAndDeleteColumnFromPeople < ActiveRecord::Migration
  def change
    remove_column :people, :name
    add_column :people, :first_name, :string
    add_column :people, :last_name, :string
  end
end
