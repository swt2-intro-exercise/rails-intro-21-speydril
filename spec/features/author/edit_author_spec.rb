require 'rails_helper'

describe "Author Edit" , type: :feature do
    it "changes should save in database" do 
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)
    
        page.fill_in "author[last_name]", with: "Heisen"
        find('input[type="submit"]').click
        @alan.reload
        expect(@alan.last_name).to eq("Heisen")
      end 
    
end 