class Easify::Sys::Role < ActiveRecord::Base
     has_many :user_roles, class_name: "Easify::Sys::UserRole", foreign_key: "role_id"
     has_many :users, class_name: "Easify::Devise::User", through: :user_roles
end
