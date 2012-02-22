class ClientWorkout < ActiveRecord::Base
	validates :client_name, :presence => true
	validates :trainer, :presence => true

	validates :paid_amount, :numericality => { :greater_than => 0 }
	validates :duration_mins, :numericality => { :greater_than => 0 }
end
