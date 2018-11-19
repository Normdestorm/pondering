bundle class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :location
      t.string :description
      t.string :preferred_experience
      t.integer :salary

      t.timestamps null: false
    end
  end
end
