require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :fname => "MyString",
      :lname => "MyString",
      :email => "MyString",
      :pw_digest => "MyString",
      :image => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_fname[name=?]", "user[fname]"

      assert_select "input#user_lname[name=?]", "user[lname]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_pw_digest[name=?]", "user[pw_digest]"

      assert_select "input#user_image[name=?]", "user[image]"
    end
  end
end
