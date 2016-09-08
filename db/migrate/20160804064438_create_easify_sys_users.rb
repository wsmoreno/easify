class CreateEasifySysUsers < ActiveRecord::Migration
  def change
    create_table :easify_sys_users do |t|
      t.boolean :activated
      t.date :activated_at
      t.string :activation_digest
      t.string :email
      t.date :end_date
      t.string :user_name
      t.string :password_digest
      t.string :remember_digest
      t.string :reset_digest
      t.date :reset_sent_at
      t.date :start_date
      t.integer :created_by
      t.integer :updated_by

      t.timestamps null: false
    end
  end
end
