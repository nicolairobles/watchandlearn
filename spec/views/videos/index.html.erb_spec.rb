require 'rails_helper'

RSpec.describe "videos/index", type: :view do
  before(:each) do
    assign(:videos, [
      Video.create!(
        :urlID => "Url",
        :thumbnail => "Thumbnail",
        :order => 1,
        :description => "MyText",
        :title => "Title",
        :curriculum => nil
      ),
      Video.create!(
        :urlID => "Url",
        :thumbnail => "Thumbnail",
        :order => 1,
        :description => "MyText",
        :title => "Title",
        :curriculum => nil
      )
    ])
  end

  it "renders a list of videos" do
    render
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Thumbnail".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
