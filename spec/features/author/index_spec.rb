require 'rails_helper'

describe "index" , type: :feature do
    it "should show show table of all authors with link to their homepage" do
        @alan = FactoryBot.create :author
        visit authors_url
        expect(page).to have_text("Name")
        expect(page).to have_text("Homepage")
        expect(page).to have_text("Alan Turing")
        expect(page).to have_link "New", href: new_author_path
    end 
    it "should delete entry and decrease count" do
        @alan = FactoryBot.create :author
        visit authors_url
        counter = Author.count

        @alan.destroy 

        expect(counter).to_not eq(Author.count)
    end
end 