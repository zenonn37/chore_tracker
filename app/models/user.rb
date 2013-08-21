class User < ActiveRecord::Base

	#def visible_posts
	#	case role
	#	when 'condition'
	#		Post.where(country:country)
	#	when condition
	#		Post.published
	#	when Bad User
	#		Post.none
	#		end	
	#presence:true,uniqueness:true,length:{}
	#format:{with:/.*/}
	#inclusion:{in:[1,2,3]}	
	#exclusion:{in:[1,2,3]}
	#acceptance:true
	#confirmation:true
			
			
	#end

	has_many :chores



	validates :name ,presence: true,length:{minimum: 5, maximum: 25}
end
