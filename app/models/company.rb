class Company < ActiveRecord::Base
    belongs_to :company, class_name => 'User'
end
