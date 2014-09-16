class LeasesController < ApplicationController
  def create
    pdf = LeasePdf.new
    respond_to do |format|
      format.pdf { send_data(pdf.to_pdf, filename: pdf.filename, type: "application/pdf") }
    end
  end
end
