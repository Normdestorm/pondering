class UsersController < ApplicationController
    
    def my_jobs
      @user = current_user
      @job_applications = current_user.job_applications
    end
    
    def my_companies
      @companies = current_user.user_companies    
    end
    
    def search
      @companies = Company.where("lower(company_name) = ?", params[:search].strip.downcase)
    end    
end