module TwetsHelper

	def create_link(twet)
		modified_twet = twet.content.split
		modified_twet.each do |twet|
			twet.gsub!(/@.*/) do |match|
				match = [1..-1]
				self.class.helpers.link_to "@#{match}", match
			end
		end
		"#{modified_twet.join('')}"
	end
end


