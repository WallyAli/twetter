class RetwetsController < ApplicationController
	
	def create
		@retwet = current_user.retwets.create(retwet_params)
		@retwet.valid? && @retwet.persisted?
		@retwet.save
		flash[:success] = "retweted successfully"
		redirect_to twets_path
	end

	def destroy
		@retwet = current_user.retwets.find(params[:retwets])
		@retwet.destroy
	end


	private

	def retwet_params
		params.require(:retwet).permit(:twet_id, :user_id)
		
	end
end
