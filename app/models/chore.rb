class Chore < ActiveRecord::Base
	attr_accessible :name, :active,:user,:notes,:summary
end
