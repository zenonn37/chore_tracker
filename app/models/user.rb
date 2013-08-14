class User < ActiveRecord::Base

	has_many :chores



	validates :name ,presence: true
end
