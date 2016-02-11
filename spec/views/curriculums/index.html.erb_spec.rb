require 'rails_helper'

RSpec.describe "curriculums/index", type: :view do
  before(:each) do
    assign(:curriculums, [
      Curriculum.create!(
        :title => "Title",
        :description => "MyText",
        :level => 1,
        :user => nil,
        :topic => nil
      ),
      Curriculum.create!(
        :title => "Title",
        :description => "MyText",
        :level => 1,
        :user => nil,
        :topic => nil
      )
    ])
  end

  it "renders a list of curriculums" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
