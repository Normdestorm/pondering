class Job < ActiveRecord::Base
    belongs_to :company
    has_many :job_applications
    has_many :users, through: :job_applications

end