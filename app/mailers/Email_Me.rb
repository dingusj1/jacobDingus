class Email_Me < ActionMailer::Base
  def contact_email(email_params)
    # You only need to customize @recipients.
    @recipients = "jacobdinguswebsitecontact@gmail.com"
    @from = email_params[:name] + " <" + email_params[:address] + ">"
    @subject = email_params[:subject]
    @sent_on = Time.now
    @body["email_body"] = email_params[:body]
    @headers = {}
  end
end