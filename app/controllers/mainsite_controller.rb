class MainsiteController < ApplicationController
  def index
  end

  def webume
  end
  
  def contactPage
  end

  def send_mail
    Email_Me::contact_email(params[:email]).deliver
    flash[:message] = "Email was sent"
    redirect_to mainsite_webume_path
  end
end
