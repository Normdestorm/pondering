class JobsController < ApplicationController

  def search
    ##byebug
    if params[:job].blank?
      flash[:danger] = "You have entered and empty search"
    else
    @jobs = Job.where("job_title like ?", "%#{params[:job]}%")
   
      flash[:danger] = "You have entered incorrect search" unless @job
    
    end
   render 'users/my_jobs'
    end
   def job_params
     params.require(:job).permit(:job_title, :description, :location, :salary)
   end

end
