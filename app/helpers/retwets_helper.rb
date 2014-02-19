module RetwetsHelper
	
	def my_twet(twet)
		twet.user_id  == current_user.id 
	end

end
