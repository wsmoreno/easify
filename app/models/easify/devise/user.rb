class Easify::Devise::User < ActiveRecord::Base
  has_many :user_roles, class_name: "Easify::Sys::UserRole", foreign_key: "user_id"
  has_many :roles, class_name: "Easify::Sys::Role", through: :user_role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

end
