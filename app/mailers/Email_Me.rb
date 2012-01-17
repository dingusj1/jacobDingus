class Email_Me < ActionMailer::Base
  def contact_email(email_params)
    # You only need to customize @recipients.
    @recipients = "jacobdinguswebsitecontact@gmail.com"
    validNameExpression = /[a-zA-Z0-9._-]/
    if email_params["name"].match(validNameExpression)
        
        mail(:to => @recipients, 
            :from => email_params["name"] + "< " + email_params["address"] + " >",
            :subject => email_params["subject"],
            :body => email_params["body"],
            :headers => {}
            )
        
        $message = "Email was sent"
    else
        $message = "Name was invalid"
    end
  end
end
=begin
    
    @from = email_params[:name] + " <" + email_params[:address] + ">"
    @subject = email_params[:subject]
    @sent_on = Time.now
    @body["email_body"] = email_params[:body]
    @headers = {}
=end