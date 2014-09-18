require 'open3'

class LeasesController < ApplicationController
  before_filter :authenticate_user!
  def new
    @resident = User.find(params[:user_id])
    @property = Property.find(params[:property_id])
    @owner = @property.owner
    @lease = Lease.new
  end

  def show
    @lease = Lease.find(params[:id])
  end

  def create
    params[:lease][:start_date] = Date.strptime(params[:lease][:start_date], "%m/%d/%Y")
    @lease = Lease.new(lease_params)

    if @lease.save
      if params[:resident_signature]
        response = create_and_upload_signature(params[:resident_signature])
        @lease.update_attributes(resident_sig_url: response['url'])
      end

      if params[:owner_signature]
        response = create_and_upload_signature(params[:owner_signature])
        @lease.update_attributes(resident_sig_url: response['url'])
      end

      redirect_to @lease
    else
      render :new
    end
  end


  def create_and_upload_signature(data)
    instructions = JSON.parse(data).map { |h| "line #{h['mx'].to_i},#{h['my'].to_i} #{h['lx'].to_i},#{h['ly'].to_i}" } * ' '
    tempfile = Tempfile.new(["signature", '.png'])

    Open3.popen3("convert -size 198x55 xc:transparent -stroke blue -draw @- #{tempfile.path}") do |input, output, error|
      input.puts instructions
    end

    Cloudinary::Uploader.upload(tempfile.path)
  end

private

  def lease_params
    params.require(:lease).permit(
      :user_id,
      :property_id,
      :rent,
      :security_deposit,
      :additional_charges,
      :total_charges,
      :late_fee,
      :pet_fee,
      :parking_fee,
      :dishonored_check_fee,
      :included_utilities,
      :occupants,
      :additional_parking,
      :days_late,
      :make_payable_to,
      :owner_notice_address,
      :days_security_deposit_return,
      :days_security_deposit_notice,
      :day_rent_due,
      :month_to_month,
      :start_date,
      :end_date,
      :resident_consent_to_esign,
      :owner_consent_to_esign,
      :resident_sign_date,
      :owner_sign_date,
      :resident_sig_url,
      :owner_sig_url
    )
  end
end
