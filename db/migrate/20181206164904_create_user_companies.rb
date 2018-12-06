class CreateUserCompanies < ActiveRecord::Migration
  def change
    create_table :user_companies do |t|
      t.references :user, index: true, foreign_key: true
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
