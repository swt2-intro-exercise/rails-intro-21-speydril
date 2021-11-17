require 'rails_helper'

describe "New paper page", type: :feature do
  it "should exist at 'new_paper_path' and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit new_paper_path
  end
  



  it "should invalidate new papers without one attribute set" do 
    paper = Paper.new(title:"")
    paper2 = Paper.new(year:"91")
    expect(paper).to_not be_valid
    expect(paper2).to_not be_valid
  end

  it "should show errors to user" do
    visit new_paper_path

    find('input[type="submit"]').click
    expect(page).to have_text("error")
  end
  
end
