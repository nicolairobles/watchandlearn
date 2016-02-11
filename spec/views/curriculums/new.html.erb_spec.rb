require 'rails_helper'

RSpec.describe "curriculums/new", type: :view do
  before(:each) do
    assign(:curriculum, Curriculum.new(
      :title => "MyString",
      :description => "MyText",
      :level => 1,
      :user => nil,
      :topic => nil
    ))
  end

  it "renders new curriculum form" do
    render

    assert_select "form[action=?][method=?]", curriculums_path, "post" do

      assert_select "input#curriculum_title[name=?]", "curriculum[title]"

      assert_select "textarea#curriculum_description[name=?]", "curriculum[description]"

      assert_select "input#curriculum_level[name=?]", "curriculum[level]"

      assert_select "input#curriculum_user_id[name=?]", "curriculum[user_id]"

      assert_select "input#curriculum_topic_id[name=?]", "curriculum[topic_id]"
    end
  end
end
