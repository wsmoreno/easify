class CreateEasifyHrRelatives < ActiveRecord::Migration
  def change
    create_table :easify_hr_relatives do |t|
      t.string     :address1
      t.string     :address2
      t.integer    :age
      t.date       :birthdate
      t.string     :company_name
      t.string     :email_address
      t.boolean    :emergency_contact
      t.string     :first_name
      t.string     :gender
      t.string     :last_name
      t.string     :middle_name
      t.string     :mobile_number
      t.string     :occupation
      t.string     :phone_number
      t.integer    :created_by
      t.integer    :updated_by
      t.references :easify_hr_human_resource, index: true, foreign_key: true
      t.references :easify_hr_relationship, index: true, foreign_key: true
      t.references :easify_hr_city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
