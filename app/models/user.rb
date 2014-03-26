# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  email              :string(255)      not null
#  password_digest    :string(255)      not null
#  session_token      :string(255)      not null
#  confirmation_token :string(255)
#  reset_token        :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  admin              :boolean          default(FALSE)
#

class User < ActiveRecord::Base
	attr_reader :password

	validates :email, :presence => true, :uniqueness => true
	validates :password, :presence => true, :length => { minimum: 6 }, :on => :create
	validates :password_digest, :presence => true
	after_initialize :ensure_session_token

	extend FriendlyId
  friendly_id :email, use: [:slugged, :finders]

	has_many :drinks, dependent: :destroy
	
	has_many :relationships, foreign_key: "follower_id", dependent: :destroy
	has_many :followed_users, :through => :relationships, :source => :followed

	has_many :reverse_relationships, 
					 :foreign_key => "followed_id",
           :class_name => "Relationship",
					 :dependent => :destroy
  has_many :followers, through: :reverse_relationships, source: :follower

 	has_many :comments, as: :commentable, dependent: :destroy
 	
 	has_many :favorites, :foreign_key => "favoritor_id", dependent: :destroy
 	has_many :favorite_drinks, through: :favorites, source: :favorited


	def self.search(search)
	  if search
	    find(:all, :conditions => ['email LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end

  def following?(other_user)
    relationships.find_by(followed_id: other_user.id)
  end

  def follow!(other_user)
    relationships.create!(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    relationships.find_by(followed_id: other_user.id).destroy
  end

  def favorite?(drink)
    favorites.find_by(favorited_id: drink.id)
  end

  def favorite!(drink)
    favorites.create!(favorited_id: drink.id)
  end

  def unfavorite!(drink)
    favorites.find_by(favorited_id: drink.id).destroy
  end

	def self.find_by_credentials(email, password)
    user = User.find_by_email(email.downcase)
    return (user && user.is_password?(password)) ? user : nil
	end

	def self.generate_session_token
		SecureRandom::urlsafe_base64(16)
	end

	def reset_session_token!
		self.session_token = self.class.generate_session_token
		self.save!
		self.session_token
	end

	def password=(password)
		@password = password
		self.password_digest = BCrypt::Password.create(password)
	end

	def is_password?(password)
		BCrypt::Password.new(self.password_digest).is_password?(password)
	end

	def vote_count(drink)
		drink.comments.where(author_id: self.id).count
	end

	private
	def ensure_session_token
		self.session_token ||= self.class.generate_session_token
	end

end
