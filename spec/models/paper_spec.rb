require 'rails_helper'

describe 'Paper model', type: :model do
    it "should have attributes title venue and year " do
      paper = Paper.new(title:"Okay" , venue: "Outside", year: 2 )
      
      expect(paper.title).to eq("Okay")
      expect(paper.venue).to eq("Outside")
      expect(paper.year).to eq(2)
    end

    it "should have an empty list of authors"  do
      @paper = Paper.new
      expect(@paper.authors).to be_empty
    end

    it "should invalidate new papers without one attribute set" do 
      paper = Paper.new(title:"")
      paper2 = Paper.new(year:"91")
      expect(paper).to_not be_valid
      expect(paper2).to_not be_valid
    end
  

end
