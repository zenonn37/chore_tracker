class Chore < ActiveRecord::Base

	validates :name, presence: true,
	                  length: {minimum:3}

	validates :summary, presence: true,
	                    length: {minimum:100}
	
end
