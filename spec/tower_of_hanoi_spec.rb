require 'tower_of_hanoi.rb'

describe TowerOfHanoi do 

    subject(:game) {TowerOfHanoi.new}
    describe "#initialize" do
        it "sets towers" do 
            expect(game.towers).to eq([[3, 2, 1],[],[]])
        end
    end

	describe "#move" do 
		it "does not allow moving from empty tower" do
            expect { game.move(1, 2) }.to raise_error("Start_tower is empty")
        end
        
        it "does not allow to move to smaller discs" do
            game.move(0,1)
            expect { game.move(0, 1) }.to raise_error("Can't move to smaller stack")
        end

        
        context "when moving a disc" do 
            it "move the top disc from one tower to another tower" do 
                expect(game.move(0,1)).to eq([[3,2],[1],[]])
			end
        end
	end
	



    describe "#won?" do 
        it "does not win from the start" do 
            expect(game.won?).to be(false)
        end
        
        it "is won if the last tower is fully stacked" do 
            game.move(0,1)
            game.move(0,2)
            game.move(1,2)
            game.move(2,0) 
            game.move(2,1) 
            game.move(0,1) 
            game.move(0,2) 
            game.move(1,0) 
            game.move(1,2) 
            game.move(0,2) 
            expect(game.towers).to eq([[],[],[3,2,1]])
        end
        it "is won if the middle tower is fully stacked" do 
            game.move(0,1) 
            game.move(1,2)
            game.move(0,1) 
            game.move(2,0) 
            game.move(2,1) 
            game.move(0,1) 
            
            expect(game.towers).to eq([[],[3,2,1],[]])
        end
    end
end