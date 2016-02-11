require 'rails_helper'

RSpec.describe "curriculums/show", type: :view do
  before(:each) do
    @curriculum = assign(:curriculum, Curriculum.create!(
      :title => "Title",
      :description => "MyText",
      :level => 1,
      :user => nil,
      :topic => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
