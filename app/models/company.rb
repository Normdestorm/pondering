class Company < ActiveRecord::Base
    has_many :jobs
    has_many :job_applications
    has_many :users, through: :job_applications
    
    def self.search(param)
        param.strip!
        param.downcase!
        to_send_back = (company_name)
        return nill unless to_send_back
        to_send_back
    end
    
    def self.company_name(param)
    matches('company_name', param)
    end 


end
