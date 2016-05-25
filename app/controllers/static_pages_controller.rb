class StaticPagesController < ApplicationController
	def index
	end

	def send_message
		respond_to do |format|
			if params[:name] == "" || params[:email] == "" || params[:message] == ""
				@error= "One of the fields was left blank"
			elsif
				name = params[:name] 
				email = params[:email]
				message = params[:message]

				ClientInquiry.send_inquiry_email(name, email, message).deliver
			end

			format.js {}
			format.json {}
		end
	end
end
