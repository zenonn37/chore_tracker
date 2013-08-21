class Chore < ActiveRecord::Base

	belongs_to :user

	validates :name, presence: true,
	                  length: {minimum:3,maximum:25}

	validates :summary, presence: true,
	                    length: {minimum:5, maximum:200}

	#scope :sold, ->{where(state: 'sold')}

    #default_scope{ where(state: 'available')}

    #scope :recent, ->{where(published_at: 2.weeks.ago)}
    #scope :recent_red, ->{recent.where(color: 'red')}
	
end
