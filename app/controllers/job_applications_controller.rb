class JobApplicationsController < ApplicationController
       
    
    def create
        #byebug
        job = Job.find_by_job_title (params[:job_title])
        user_job = JobApplication.create(user: current_user, job: job)
        flash[:success] = "Job #{job.job_title} was successfully added to your list!"
        redirect_to my_jobs_path
    end
    
    def destroy
        job_application = JobApplication.find(params[:id])
        job_application.destroy
        flash[:notice] = " #{job_application.job.job_title} was successfully removed from jobs applications"
        redirect_to my_jobs_path
    end
    
 
end