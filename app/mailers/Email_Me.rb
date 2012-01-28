class Email_Me < ActionMailer::Base
  default :to => "jacobdinguswebsitecontact@gmail.com"
  def send_contact_email(email_params)
    @email = email_params
    mail(:to => email_params["to"], 
        :from => email_params["name"] + "< " + email_params["address"] + " >",
        :subject => email_params["subject"],
        :body => email_params["body"] + "User" + email_params["name"] + "< " + email_params["address"] + " >"
        )
  end
end
