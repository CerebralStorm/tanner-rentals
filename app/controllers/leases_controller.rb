class LeasesController < ApplicationController
  before_filter :authenticate_user!
  def new
    @resident = User.find(params[:user_id])
    @property = Property.find(params[:property_id])
    @owner = @property.owner
    @lease = Lease.new
  end

  def create
    pdf = LeasePdf.new
    respond_to do |format|
      format.pdf { send_data(pdf.to_pdf, filename: pdf.filename, type: "application/pdf") }
    end
  end
end
