class UserMailer < ApplicationMailer
	def comment_thank_you
		@user = user
		mail(to: @user.email, subject: 'Thank You for sharing, from your friends at Fresh City!')
	end
end
