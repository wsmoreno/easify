class Easify::Sys::UserRole < ActiveRecord::Base
  belongs_to :user, class_name: "Easify::Devise::User", foreign_key: "user_id"
  belongs_to :role, class_name: "Easify::Sys::Role", foreign_key: "role_id"
end
