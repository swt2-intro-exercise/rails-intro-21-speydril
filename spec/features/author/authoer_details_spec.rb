require 'rails_helper'

describe "author Details" , type: :feature do
    it "should show author details" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)
        expect(page).to have_text("Alan")
        expect(page).to have_text("Turing")
        expect(page).to have_text("http://wikipedia.org/Alan_Turing")
    end 
end 