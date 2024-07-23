class VendorMaster < ActiveRecord::Base
    validates :company_name, :vendor_name, :mobile_no, :email_id, :address, presence: true
  end
  