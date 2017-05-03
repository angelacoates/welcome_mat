class NotificationsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications_mailer.likes_a_house.subject
  #
  def likes_a_house(home, current_user)
    @greeting = "Hi"

    mail to: "to@example.org"
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
