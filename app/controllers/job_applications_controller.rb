class JobApplicationsController < ApplicationController
       
    
    def create
        #byebug
        job = Job.find_by_job_title (params[:job_title])
        user_job = JobApplication.create(user: current_user, job: job)
        flash[:success] = "Job #{job.job_title} was successfully added to your list!"
        redirect_to my_jobs_path
    end
    
    def destroy
        job = Job.find_by_job_title (params[:job_title])
        job_application = JobApplication.where(user: current_user, job: job).first
        job_application.destroy
        flash[:notice] = " #{job.job_title} was successfully removed from jobs applications"
        redirect_to my_jobs_path
    end
    
 
end