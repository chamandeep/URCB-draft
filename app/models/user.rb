class User < ActiveRecord::Base

has_many :Educations
has_many :Disabilitys, through: :UserDisability
has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :User
  
  
    def login!(session)
    session[:user_id] = id
  end
  
  def self.logout!(session)
  session[:user_id] = nil
  end
end
