require 'tower_of_hanoi.rb'

describe TowerOfHanoi do 

    subject(:game){TowerOfHanoi.new([[4,3],[2,1],[]])}

    describe "#initialize" do
        # it "sets towers" do 
        #     expect(game.towers).to eq([[4,3],[2,1],[]])
        # end
        it "takes one argument: towers" do
            expect { game }.not_to raise_error
        end
        context "with valid argument" do 
            it "sets towers" do 
            expect(game.towers).to eq([[4,3],[2,1],[]])
            end
        end
    end

    describe "#move" do 
        context
        context "when moving a disc" do 
            it "move the top disc from one tower to another tower" do 
                expect(move(1,2)).to eq([[4,3],[2],[1]])
            end
        end
    end

    describe "#won?" do 
        it "checks if a tower is fully stacked and others are empty" do 
            
            expect().to eq([[],[],[4,3,2,1]])
        end
    end
end