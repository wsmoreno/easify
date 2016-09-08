class CreateEasifyHrContactInformations < ActiveRecord::Migration
  def change
    create_table :easify_hr_contact_informations do |t|
      t.date    :end_date
      t.string  :number_or_address
      t.date    :start_date
      t.integer :easify_hr_human_resource_id
      t.integer :easify_hr_contact_type_id
      t.integer :created_by
      t.integer :updated_by

      t.timestamps null: false
    end

    add_foreign_key :easify_hr_contact_informations, :easify_hr_contact_types, column: :easify_hr_contact_type_id, primary_key: "id" 
    add_foreign_key :easify_hr_contact_informations, :easify_hr_human_resources, column: :easify_hr_human_resource_id, primary_key: "id"
    add_index(:easify_hr_contact_informations, :easify_hr_contact_type_id, name: 'by_contact_type_id')    
    add_index(:easify_hr_contact_informations, :easify_hr_human_resource_id, name: 'by_human_resource_id')
  end
end
