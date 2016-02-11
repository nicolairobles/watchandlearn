require 'rails_helper'

RSpec.describe "curriculums/edit", type: :view do
  before(:each) do
    @curriculum = assign(:curriculum, Curriculum.create!(
      :title => "MyString",
      :description => "MyText",
      :level => 1,
      :user => nil,
      :topic => nil
    ))
  end

  it "renders the edit curriculum form" do
    render

    assert_select "form[action=?][method=?]", curriculum_path(@curriculum), "post" do

      assert_select "input#curriculum_title[name=?]", "curriculum[title]"

      assert_select "textarea#curriculum_description[name=?]", "curriculum[description]"

      assert_select "input#curriculum_level[name=?]", "curriculum[level]"

      assert_select "input#curriculum_user_id[name=?]", "curriculum[user_id]"

      assert_select "input#curriculum_topic_id[name=?]", "curriculum[topic_id]"
    end
  end
end
