FactoryGirl.define do
	factory :user do
		name "Steve"
		email "steve@example.com"
		password "password"
		password_confirmation "password"
	end
end