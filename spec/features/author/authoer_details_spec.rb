require 'rails_helper'

describe "author Details" , type: feature, do
    it "should show author details" do
        visit authors_path(@alan)
        
    end 
end 