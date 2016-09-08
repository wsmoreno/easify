class CreateEasifySysUserRoles < ActiveRecord::Migration
  def change
    create_table :easify_sys_user_roles do |t|
      t.references :easify_sys_role, index: true, foreign_key: true
      t.date       :start_date
      t.date       :end_date
      t.integer    :created_by
      t.integer    :updated_by

      t.timestamps null: false
    end
  end
end
