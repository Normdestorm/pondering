class CompanySearchesController < ApplicationController
    # there should be no actions in a controller except for one or more of these:
    # index - displays 0,1,n+ of the resource
    # show - displays a single resource by id
    # new - displays a form for creating a new resource, POSTS to :create
    # create - Creates a new resource - if invalid, render the :new action, if saved redirect_to :show or :index
    # edit - displays the edit form, PATCHES to :update
    # update - UPDATES the resource based on params, if invalid, render :edit, if update redirect_to :show or :index
    # destroy - DELETES a resource
    
    
    def index
      @results = Company.where("lower(company_name) like ?", "%#{params[:search].strip.downcase}%")
    end
end