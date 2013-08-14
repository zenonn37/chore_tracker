class Chore < ActiveRecord::Base

	belongs_to :user

	validates :name, presence: true,
	                  length: {minimum:3}

	validates :summary, presence: true,
	                    length: {minimum:5}
	
end
