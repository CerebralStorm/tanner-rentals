class BillsController < ApplicationController
  respond_to :json
  layout "blank"

  def index
    if params[:ids]
      respond_with Bill.where(id: params[:ids])
    else
      respond_with Bill.all
    end
  end

  def show
    @bill = Bill.find(params[:id])
    respond_to do |format|
      format.html { render }
      format.json { respond_with @bill }
      format.pdf do
        html = render_to_string('show.html.erb')
        pdf = WickedPdf.new.pdf_from_string(html)
        send_data(pdf, :type => "application/pdf", :disposition  => "inline")
      end
    end
  end

  def create
    bill = Bill.new(bill_params)
    if bill.save
      render json: bill
    else
      render json: {errors: bill.errors.messages}, status: 422
    end
  end

  def update
    bill = Bill.find(params[:id])
    if bill.update(bill_params)
      render json: bill
    else
      render json: {errors: bill.errors.messages}, status: 422
    end
  end

  def destroy
    bill = Bill.find(params[:id]).destroy
    respond_with :no_content
  end

private

  def bill_params
    params.require(:bill).permit(:url)
  end
end
