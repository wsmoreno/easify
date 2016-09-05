FactoryGirl.define do

  factory :user, class: Easify::Devise::User do
  	email "wilson_moreno@1stslp.com"
        password "unitrade"
  end

end
