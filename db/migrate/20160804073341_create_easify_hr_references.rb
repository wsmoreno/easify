class CreateEasifyHrReferences < ActiveRecord::Migration
  def change
    create_table :easify_hr_references do |t|
      t.string :address1
      t.string :address2
      t.string :email_address
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :mobile_number
      t.string :phone_number
      t.references :easify_hr_human_resource, index: true, foreign_key: true
      t.references :easify_hr_city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
