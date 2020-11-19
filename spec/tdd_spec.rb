require 'tdd'
require 'rspec'

describe Array do 

    subject(:arr) {[1, 2, 1, 3, 3]}

    describe "#my_uniq" do 
        it "removes duplicates" do 
            expect(arr.my_uniq).to eq([1,2,3])
        end
    end

    describe "#two_sum" do 
        array = [-1, 0, 0, 2, -2, 1]
        it " finds all pairs of positions where the elements at those positions sum to zero" do
            expect(array.two_sum).to eq([[0,5],[1,2],[3,4]])
        end
    end

end