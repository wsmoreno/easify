class CreateEasifyHrHumanResources < ActiveRecord::Migration
  def change
    create_table :easify_hr_human_resources do |t|
      t.string     :address1
      t.string     :address2
      t.date       :birthdate
      t.string     :complexion
      t.string     :first_name
      t.string     :gender
      t.string     :hdmf_number
      t.string     :height
      t.string     :last_name
      t.text       :medical_conditions
      t.string     :middle_name
      t.string     :nick_name
      t.string     :personality_essay
      t.string     :sss_number
      t.string     :tax_identification_number
      t.string     :weight
      t.integer    :supervisor_id
      t.integer    :created_by
      t.integer    :updated_by      
      t.references :easify_hr_citizenship, index: true, foreign_key: true
      t.references :easify_hr_city, index: true, foreign_key: true
      t.references :easify_hr_civil_status, index: true, foreign_key: true
      t.references :easify_hr_company, index: true, foreign_key: true
      t.references :easify_hr_office_location, index: true, foreign_key: true
      t.references :easify_hr_religion, index: true, foreign_key: true
      t.references :easify_sys_user, index: true, foreign_key: true

      t.timestamps null: false
    end

      add_foreign_key :easify_hr_human_resources, :easify_hr_human_resources, column: :supervisor_id, primary_key: "id"
  end
end
