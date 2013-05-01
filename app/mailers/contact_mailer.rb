class ContactMailer < ActionMailer::Base
  default from: "mailer@sshomesincorporated.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reset.subject
  #
  def contact(params)
    @params = params
    
    mail(
      :to      => "contact@sshomesincorporated.com",
      :subject => "Contact from sshomesincorporated.com") do |format|
        format.text
        format.html
    end
  end
end