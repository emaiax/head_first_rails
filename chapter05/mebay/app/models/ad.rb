class Ad < ActiveRecord::Base
	validates :name, :presence => true
	validates :description, :presence => true
	validates :seller_id, :presence => true
	validates :price, :presence => true
end
