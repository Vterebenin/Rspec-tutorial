FactoryGirl.define do
  factory :project do
		sequence(:name) { |n| "Project #{n}" }    
		description "Sample for testing purpose"
		due_on 1.week.from_now
		association :owner

		trait :due_yesterday do 
			due_on 1.day.ago 
		end

		trait :due_today do 
			due_on Date.today 
		end

		trait :due_yesterday do 
			due_on 1.day.from_now
		end
  end

end
