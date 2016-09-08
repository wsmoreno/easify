class AddForeignKeyConstraintToUserRole < ActiveRecord::Migration
   def change
      add_column :easify_sys_user_roles, :easify_devise_user_id, :integer
      add_foreign_key :easify_sys_user_roles, :easify_devise_users, name:"devise_user_connect_to_roles", column: "easify_devise_user_id", primary_key: "id"
   end
end
