
class TowerOfHanoi
    attr_reader :towers
    def initialize
        @towers = [[3, 2, 1],[],[]]
    end

    def move(start_tower, target_tower)
      raise "Start_tower is empty" if @towers[start_tower] == []
      raise "Can't move to smaller stack" if   !@towers[target_tower].empty? && @towers[target_tower][-1] <  @towers[start_tower][-1]
      @towers[target_tower] << @towers[start_tower].pop
      @towers
    end

    
    # private

end