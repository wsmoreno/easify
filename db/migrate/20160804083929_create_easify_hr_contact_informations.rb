class CreateEasifyHrContactInformations < ActiveRecord::Migration
  def change
    create_table :easify_hr_contact_informations do |t|
      t.date :end_date
      t.string :number_or_address
      t.date :start
      t.integer :human_resource_id
      t.integer :contact_type_id

      t.timestamps null: false
    end
    add_foreign_key :easify_hr_contact_informations, :easify_hr_contact_types, column: :contact_type_id, primary_key: "id" 
    add_foreign_key :easify_hr_contact_informations, :easify_hr_human_resources, column: :human_resource_id, primary_key: "id"
    add_index(:easify_hr_contact_informations, :contact_type_id, name: 'by_contact_type_id')    
    add_index(:easify_hr_contact_informations, :human_resource_id, name: 'by_human_resource_id')
  end
end
