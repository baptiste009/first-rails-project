class UserMailer < ApplicationMailer
	default from: "timseithe@googlemail.com"

	def contact_form (email, name, message)
	@message = message
		mail(:from => email, :to => 'timseithe@googlemail.com', :subject => "A new contact from message from #{name}")
	end
end

def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  UserMailer.contact_form(@email, @name, @message).deliver_now
end
