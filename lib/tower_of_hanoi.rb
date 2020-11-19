
class TowerOfHanoi
    attr_reader :towers
    def initialize
        @towers = [[4, 3, 2, 1],[],[]]
    end

    def move(start_tower, target_tower)
      # @towers[target_tower] << @towers[start_tower].pop
    end

    def valid_move?(start_tower, target_tower)

    end
    # private

end