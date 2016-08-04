class Easify::Sys::UserRole < ActiveRecord::Base
  belongs_to :easify/sys/user
  belongs_to :easify/sys/role
end
