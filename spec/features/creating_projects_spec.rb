require "rails_helper"

RSpec.feature "Users can create new projects" do 
	before do 
		visit "/"

        click_link "New Project"
    end

	scenario "with valid attributes" do 
		visit "/"

		click_link "New Project"

		fill_in "Name", with: "Sublime Text 3"
		fill_in "Description", with: "A text editor for everyone"
		click_button "Create Project"

		expect(page).to have_content "Project has been created."

        project = Project.find_by(name: "Sublime Text 3")
        expect(page).to have_title title
	end
	scenario "when providing invalid attributes" do
		visit "/"

		click_link "New Project"
		click_button "Create Project"

		
		
	end
end

