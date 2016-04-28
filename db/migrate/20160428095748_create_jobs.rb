class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string(:title, null: false)
      t.string(:company, default: 'MS')

      t.timestamps null: false

    end
  end
end
