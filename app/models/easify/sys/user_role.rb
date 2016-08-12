class Easify::Sys::UserRole < ActiveRecord::Base
  belongs_to :easify_sys_user
  belongs_to :easify_sys_role
end
