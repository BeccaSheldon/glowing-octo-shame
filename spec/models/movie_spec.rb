require 'spec_helper'

describe Movie do
  describe Movie do
    let(:movie) { Movie.new }

    describe "#snippet" do
      context "when description is less than 50 characters" do
        it "returns the full description" do
          #set scenario
          allow(movie).to receive(:description).and_return("When a Roman general is betrayed and his family is") 

          #declare exepectation
          expect(movie.snippet).to eq(movie.description)
        end
      end
      context "when description is greater than 50 characters" do
        it "returns the first 47 characters and appends ..."

      end
    end
  end  
end
