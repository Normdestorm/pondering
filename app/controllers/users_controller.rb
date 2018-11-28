class UsersController < ApplicationController
    
    def my_jobs
    @user = current_user
    @job_applications = current_user.jobs
    end
    
    def my_companies
        
    end
end