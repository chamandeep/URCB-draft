class Education < ActiveRecord::Base
belongs_to :User
belongs_to :University
belongs_to :Course
end
