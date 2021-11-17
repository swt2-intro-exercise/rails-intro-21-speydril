require 'rails_helper'

describe "Paper Details" , type: :feature do
    it "should show author name" do
        @alan = FactoryBot.create :author
        paper = Paper.new(title:"Hans", venue:"OKay", year: 3, authors: {@alan})
        visit paper_path(paper)
        expect(page).to have_text("Alan Turing")
      
       
    end 
end 