class CreateEasifyHrCompanies < ActiveRecord::Migration
  def change
    create_table :easify_hr_companies do |t|
      t.string     :name
      t.string     :address1
      t.string     :address2
      t.string     :address3
      t.string     :email_primary
      t.string     :email_secondary
      t.string     :phone_number_primary
      t.string     :phone_number_secondary
      t.string     :tax_identification_number
      t.string     :fax_number
      t.string     :organization_logo
      t.string     :organization_description
      t.integer    :organization_head_id
      t.string     :registration_number
      t.string     :web_address
      t.integer    :created_by
      t.integer    :updated_by
      t.boolean    :is_active
      t.references :easify_hr_city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
