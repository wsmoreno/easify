class AddDeviseUserIdToEasifyHrHumanResource < ActiveRecord::Migration
  def change
    add_column :easify_hr_human_resources, :devise_user_id, :integer
    add_foreign_key :easify_hr_human_resources, :easify_devise_users, column: :devise_user_id, primary_key: "id" 
  end
end
