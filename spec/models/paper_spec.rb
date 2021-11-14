require 'rails_helper'

describe 'Paper model', type: :model do
    it "should have attributes title venue and year " do
      paper = Paper.new(title:"Okay" , venue: "Outside", year: 2 )
      
      expect(paper.title).to eq("Okay")
      expect(paper.venue).to eq("Outside")
      expect(paper.year).to eq(2)
    end

    

end
