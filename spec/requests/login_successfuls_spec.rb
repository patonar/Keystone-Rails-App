require 'spec_helper'


describe "Successful Login" do
  it "should login and redirects successful to the admin panel" do
    user = create(:user)
    visit root_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button("Login")
    current_path.should eq(dashboard_path)
  end
end
