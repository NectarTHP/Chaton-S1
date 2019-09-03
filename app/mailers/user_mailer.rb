class UserMailer < ApplicationMailer
	default from: 'nectar@monsite.fr'

	def welcome_email(user)

		@user = user

		@url = "http://monsite.fr/login"

		mail(to: 'thibthib@yopmail.fr', subject: 'Bienvenue sur Nectar de Châton', body:'email body', mail_settings: {sandbox_mode: {enable:true}})

	end
end
