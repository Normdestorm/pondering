class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      t.references :user, index: true, foreign_key: true
      t.references :job, index: true, foreign_key: true
      t.references :company, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
