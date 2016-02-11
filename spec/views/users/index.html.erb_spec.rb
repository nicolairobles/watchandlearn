require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :fname => "Fname",
        :lname => "Lname",
        :email => "Email",
        :pw_digest => "Pw Digest",
        :image => "Image"
      ),
      User.create!(
        :fname => "Fname",
        :lname => "Lname",
        :email => "Email",
        :pw_digest => "Pw Digest",
        :image => "Image"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Lname".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Pw Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
