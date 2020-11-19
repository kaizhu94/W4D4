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

	describe "#my_transpose" do 
		matrix = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
		it "converts between the row-oriented and column-oriented representations" do
			expect(matrix.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
		end
	end

	describe "#stock_picker" do
		prices = [10, 15, 16, 8, 12, 25, 10]
		it "returns the indices of the most profitable pair of days" do
			expect(prices.stock_picker).to eq([3, 5])
		end
    end
    
    describe 
end