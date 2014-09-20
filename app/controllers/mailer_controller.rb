class MailerController < ApplicationController
  def create
    UserContact.contact_us(params[:subject], params[:message]).deliver
    render json: {success: "Message sent!"}, status: :accepted
  end
end