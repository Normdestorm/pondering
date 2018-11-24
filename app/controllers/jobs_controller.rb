class JobsController < ApplicationController

  def search
    ##byebug
    if params[:job].present?
    @jobs = Job.where("job_title like ?", "%#{params[:job]}%")
    render 'users/my_jobs'
  else
    flash[:danger] = "You have entered and empty search"
    redirect_to my_jobs_path
   end 
  end
  
end
#nikeythe@gmail.com