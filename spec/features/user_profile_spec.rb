require 'spec_helper'

feature "Profile page" do
	scenario "viewing" do
		user = FactoryGirl.create(:user)

		visit user_path(user)

		expect(page).to have_content(user.name)
		expect(page).to have_content(user.email)
	end
end

feature "Editing Users" do
	scenario "Updating a user" do
		user = FactoryGirl.create(:user)

		visit user_path(user)
		click_link "Edit Profile"

		fill_in "Username", with: "new_username"
		fill_in "Email", with: "new_email@example.com"
		click_button "Update Profile"

		expect(page).to have_content("Profile has been updated.")
		expect(page).to have_content("new_username")
		expect(page).to have_content("new_email@example.com")
	end
end