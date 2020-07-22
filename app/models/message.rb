class Message < ApplicationRecord
	belongs_to :converstion
	belongs_to :user

	validates_presence_of :body, :converstion_id,  :user_id 

	def message_time
		created_at.strftime("%d/%m/%y at %I:%M %p")
	end
end
