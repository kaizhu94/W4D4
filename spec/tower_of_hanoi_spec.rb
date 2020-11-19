require 'tower_of_hanoi.rb'

describe TowerOfHanoi do 

    subject(:game) {TowerOfHanoi.new}

    describe "#initialize" do
        it "sets towers" do 
            expect(game.towers).to eq([[4, 3, 2, 1],[],[]])
        end
    end

	describe "#move" do 
		context "takes two arguments; start_tower and target_tower" do
			it

		end

        context "when moving a disc" do 
            it "move the top disc from one tower to another tower" do 
                expect(game.move(,2)).to eq([[4,3],[2],[1]])
			end
			
			i
        end
	end
	
	describe "#valid_move?" do
		it "should start from a valid tower" do 
			
			expect(game[1])).to_not be_empty
		end


	end


    describe "#won?" do 
        it "checks if a tower is fully stacked and others are empty" do 
            
            expect().to eq([[],[],[4,3,2,1]])
        end
    end
end