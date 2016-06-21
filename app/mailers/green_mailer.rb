class GreenMailer < ApplicationMailer
	def welcome_email(green)
		@green = green
	    @url  = 'http://ihubstartups.org/greens/sign_in'
	    mail(to: @green.email, subject: 'Account Information')
	end
end
