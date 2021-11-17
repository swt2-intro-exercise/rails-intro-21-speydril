require 'rails_helper'

RSpec.describe "papers/index", type: :view do
  before(:each) do
    assign(:papers, [
      Paper.create!(
        title: "Title",
        venue: "Venue",
        year: 2
      ),
      Paper.create!(
        title: "Title",
        venue: "Venue",
        year: 2
      )
    ])
  end

  it "renders a list of papers" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Venue".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end

  it "filter by year" do
    paper1 = Paper.new(title:"yo", venue:"0kay", year: 1950)
    paper2 = Paper.new(title:"hi", venue:"ya", year:1965)
    paper1.save
    paper2.save
    queried = Paper.published(1950)

    expect(queried.include?(paper1)).to be true
    expect(queried.include?(paper2)).to be false
  end
end
