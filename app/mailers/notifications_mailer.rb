class NotificationsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications_mailer.likes_a_house.subject
  #
  def likes_a_house(home, current_user)
    @home = home
    @current_user = current_user

    mail to: @home.user.email
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications_mailer.homes_added.subject
  #
  def homes_added
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
