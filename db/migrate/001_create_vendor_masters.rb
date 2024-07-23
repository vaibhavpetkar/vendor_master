class CreateVendorMasters < ActiveRecord::Migration[6.0]
  def change
    create_table :vendor_masters do |t|
      t.string :vendor_code
      t.string :company_name
      t.string :vendor_name
      t.text :account_details
      t.string :contact_person
      t.string :alternate_contact_person
      t.string :phone_no
      t.string :alternate_phone_no
      t.string :mobile_no
      t.string :alternate_mobile_no
      t.string :email_id
      t.string :alternate_email_id
      t.string :tan_no
      t.string :fax_no
      t.string :website
      t.text :address
      t.string :location
      t.string :city
      t.string :pincode
      t.string :state
      t.string :country
      t.string :status
      t.text :remarks

      t.timestamps
    end
  end
end
