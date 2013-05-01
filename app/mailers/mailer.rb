class Mailer < ActionMailer::Base
  def contact(params)
    @params = params
    
    mail(
      :to      => "contact@sshomesincorporated.com",
      :from    => "mailer@sshomesincorporated.com",
      :subject => "Contact from sshomesincorporated.com") do |format|
        format.text
        format.html
    end
  end
end