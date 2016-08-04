class CreateEasifySysUserRoles < ActiveRecord::Migration
  def change
    create_table :easify_sys_user_roles do |t|
      t.references :easify_sys_user, index: true, foreign_key: true
      t.references :easify_sys_role, index: true, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
