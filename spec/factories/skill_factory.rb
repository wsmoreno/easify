FactoryGirl.define do

  factory :skill, class: Easify::Hr::Skill do
     name "Microsoft Excel"
     description "Advance reporting in MS Excel"
     level "10"
     start_date 1.year.ago 
  end

end
