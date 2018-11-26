class Job < ActiveRecord::Base
    has_many :job_applications
    has_many :users, through: :job_applications

end