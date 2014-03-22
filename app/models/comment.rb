# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  body             :text             not null
#  author_id        :integer          not null
#  commentable_id   :integer
#  commentable_type :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  rating           :integer
#

class Comment < ActiveRecord::Base
	belongs_to :commentable, polymorphic: true
	validates :rating, :presence => true
end
