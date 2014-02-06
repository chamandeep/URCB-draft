class Disability < ActiveRecord::Base
has_many :Users, through :UserDisability
end
