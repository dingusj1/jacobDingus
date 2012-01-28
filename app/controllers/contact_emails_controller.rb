class ContactEmailsController < ApplicationController

  # GET /contact_emails/new
  # GET /contact_emails/new.json
  def new
    @contact_email = ContactEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact_email }
    end
  end

  # POST /contact_emails
  # POST /contact_emails.json
  def create
    @contact_email = ContactEmail.new(params[:contact_email])
    @contact_email.to = "jacobdinguswebsitecontact@gmail.com"

    respond_to do |format|
      if @contact_email.save
        Email_Me::send_contact_email(@contact_email).deliver
        flash[:message] = "Email was successfully sent"
        redirect_to mainsite_webume_path and return
       # format.json { render json: @contact_email, status: :created, location: @contact_email }
      else
        flash[:message] = "Please Fix the errors below"
        format.html { render action: "new" }
        format.json { render json: @contact_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /contact_emails
  # GET /contact_emails.json
  def index
    #@contact_emails = ContactEmail.all

    redirect_to new_contact_email_path

    #respond_to do |format|
    #  format.html
    #  format.json { render json: @contact_emails }
    #end
  end

  # GET /contact_emails/1
  # GET /contact_emails/1.json
  def show
  #  @contact_email = ContactEmail.find(params[:id])
    redirect_to new_contact_email_path
  #  respond_to do |format|
  #    format.html # show.html.erb
  #    format.json { render json: @contact_email }
  #  end
  end

  # GET /contact_emails/1/edit
  def edit
  redirect_to new_contact_email_path
  #  @contact_email = ContactEmail.find(params[:id])
  end


  # PUT /contact_emails/1
  # PUT /contact_emails/1.json
  def update
    redirect_to new_contact_email_path
  #  @contact_email = ContactEmail.find(params[:id])
  #
  #  respond_to do |format|
  #    if @contact_email.update_attributes(params[:contact_email])
  #      format.html { redirect_to @contact_email, notice: 'Contact email was successfully updated.' }
  #      format.json { head :ok }
  #    else
  #      format.html { render action: "edit" }
  #      format.json { render json: @contact_email.errors, status: :unprocessable_entity }
  #    end
  #  end
  end

  # DELETE /contact_emails/1
  # DELETE /contact_emails/1.json
  def destroy
    redirect_to new_contact_email_path
  #  @contact_email = ContactEmail.find(params[:id])
  #  @contact_email.destroy
  #
  #  respond_to do |format|
  #    format.html { redirect_to contact_emails_url }
  #    format.json { head :ok }
  #  end
  end

end
