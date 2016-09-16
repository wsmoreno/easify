FactoryGirl.define do

  factory :user, class: Easify::Devise::User do
  	email "wilson_moreno@1stslp.com"
        password "unitrade"
        password_confirmation "unitrade"
	confirmed_at Date.today
  end

end
