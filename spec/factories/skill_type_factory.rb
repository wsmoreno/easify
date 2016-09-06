FactoryGirl.define do

  factory :skill_type, class: Easify::Hr::SkillType do
     name "Computer Spreadsheet"
     description "Generic Computer Spreadsheet Skill"
     start_date 1.year.ago 
  end

end
