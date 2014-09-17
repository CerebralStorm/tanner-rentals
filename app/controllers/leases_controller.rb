class LeasesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @property = Property.find(params[:property_id])
  end

  def create
    pdf = LeasePdf.new
    respond_to do |format|
      format.pdf { send_data(pdf.to_pdf, filename: pdf.filename, type: "application/pdf") }
    end
  end
end
