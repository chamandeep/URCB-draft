class Friendship < ActiveRecord::Base
belongs_to :User
  belongs_to :friend, :class_name => "User"

end
