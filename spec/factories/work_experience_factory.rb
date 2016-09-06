FactoryGirl.define do

  factory :work_experience, class: Easify::Hr::WorkExperience do
        employer_name "SpeakUp English Tutorial Center"
        address1 "Unit 106 G/F EGI Taft Tower Taft Ave"
        address2 "Bgy 708, Zone 078, Malate"
        start_period "201001"
        end_period "201501"
        last_position "Math Teacher"
        starting_salary "10000"
        ending_salary "10000"
	awards "Best Math Teacher"
        recognitions "Most Improve Employee"
        reason_for_leaving "Career change"      
  end

end
