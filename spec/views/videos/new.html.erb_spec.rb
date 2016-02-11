require 'rails_helper'

RSpec.describe "videos/new", type: :view do
  before(:each) do
    assign(:video, Video.new(
      :urlID => "MyString",
      :thumbnail => "MyString",
      :order => 1,
      :description => "MyText",
      :title => "MyString",
      :curriculum => nil
    ))
  end

  it "renders new video form" do
    render

    assert_select "form[action=?][method=?]", videos_path, "post" do

      assert_select "input#video_urlID[name=?]", "video[urlID]"

      assert_select "input#video_thumbnail[name=?]", "video[thumbnail]"

      assert_select "input#video_order[name=?]", "video[order]"

      assert_select "textarea#video_description[name=?]", "video[description]"

      assert_select "input#video_title[name=?]", "video[title]"

      assert_select "input#video_curriculum_id[name=?]", "video[curriculum_id]"
    end
  end
end
