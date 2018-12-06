class JobsController < ApplicationController

  def search
    @job_applications = current_user.job_applications
    if params[:job].blank?
      flash[:danger] = "You have entered and empty search"
    else
      @jobs = Job.where("lower(job_title) like ?", "%#{params[:job].downcase}%")
   
      flash[:danger] = "Your search matched no jobs" unless @jobs
       
    end
  end
  
  def job_params
    params.require(:job).permit(:job_title, :description, :location, :salary)
 end
  
end
