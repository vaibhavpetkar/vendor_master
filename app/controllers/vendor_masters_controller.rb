class VendorMastersController < ApplicationController
    before_action :find_vendor_master, only: [:show, :edit, :update, :destroy]
  
    def index
      @vendor_masters = VendorMaster.all
    end
  
    def show
    end
  
    def new
      @vendor_master = VendorMaster.new
    end
  
    def create
      @vendor_master = VendorMaster.new(vendor_master_params)
      if @vendor_master.save
        redirect_to vendor_masters_path, notice: 'Vendor was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @vendor_master.update(vendor_master_params)
        redirect_to vendor_masters_path, notice: 'Vendor was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @vendor_master.destroy
      redirect_to vendor_masters_path, notice: 'Vendor was successfully deleted.'
    end
  
    private
  
    def find_vendor_master
      @vendor_master = VendorMaster.find(params[:id])
    end
  
    def vendor_master_params
      params.require(:vendor_master).permit(:vendor_code, :company_name, :vendor_name, :account_details, :contact_person, :alternate_contact_person, :phone_no, :alternate_phone_no, :mobile_no, :alternate_mobile_no, :email_id, :alternate_email_id, :tan_no, :fax_no, :website, :address, :location, :city, :pincode, :state, :country, :status, :remarks)
    end
  end
  