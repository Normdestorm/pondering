class Job < ActiveRecord::Base

    def self.new_from_lookup(job_title)
       # byebug
      #Job.where(job_title: job_title)#Job.job_title(job_title)
      Job.where("job_title like ?", "%#{job_title}%")
      #new(job_title: looked_up_job.job_title)
    end
    
end