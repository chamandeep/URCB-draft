class User < ActiveRecord::Base

has_many :Educations
has_many :Disabilitys, through: :UserDisability
  has_many :friendships, foreign_key: "follower_id", dependent: :destroy
    has_many :followed_users, through: :friendships, source: :followed
  has_many :reverse_friendships, foreign_key: "followed_id",
                                   class_name:  "Friendship",
                                   dependent:   :destroy
  has_many :followers, through: :reverse_friendships, source: :follower	
  
	  def following?(other_user)
    friendships.find_by(followed_id: other_user.id)
  end

  def follow!(other_user)
    friendships.create!(followed_id: other_user.id)
  end
	
	  def unfollow!(other_user)
    friendships.find_by(followed_id: other_user.id).destroy
  end
  
          def login!(session)
    session[:user_id] = id
  end
  
  def self.logout!(session)
  session[:user_id] = nil
  end
end
