module RetwetsHelper

	def not_my_twet(twet)
		twet.user_id  != current_user.id 
	end

	def my_twet(twet)
		twet.user_id  == current_user.id 
	end

end
