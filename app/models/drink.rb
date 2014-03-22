class Drink < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validates :user_id, presence: true

	belongs_to :user
 	has_many :comments, as: :commentable

 	has_many :favorites, :foreign_key => "favorited_id", dependent: :destroy
	has_many :favorite_users, through: :favorites, source: :favoritor

	def self.search(search)
	  if search
	    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end

end
