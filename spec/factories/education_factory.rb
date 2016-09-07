FactoryGirl.define do

  factory :education, class: Easify::Hr::Education do
     attended_from               "1999"
     attended_to                 "2005"
     degree                      "Computer Science"
     extra_curricular_activities ""
     scholastic_honor            ""
     grade_average               "1.27"
     rank_in_class               "1st"
     year_graduated              "2009" 
  end

end
