# == Schema Information
#
# Table name: drinks
#
#  id             :integer          not null, primary key
#  user_id        :integer          not null
#  name           :string(255)      not null
#  description    :text
#  created_at     :datetime
#  updated_at     :datetime
#  filepicker_url :string(255)

class Drink < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validates :user_id, presence: true

	belongs_to :user
 	has_many :comments, as: :commentable

 	has_many :favorites, :foreign_key => "favorited_id", dependent: :destroy
	has_many :favorite_users, through: :favorites, source: :favoritor

	has_many :recipes
	has_many :ingredients, through: :recipes, source: :ingredient
	

	def self.search(search)
	  if search
	    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end

end
