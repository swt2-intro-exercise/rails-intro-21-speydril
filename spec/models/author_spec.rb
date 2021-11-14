require 'rails_helper'

RSpec.describe Author, type: :model do
    it "should have attributes first_name last_name and homepage " do
      author = Author.new()
      expect(author.first).to eq('hello')
end
