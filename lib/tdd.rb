class Array

    def my_uniq
        arr = []
        self.each do |ele|
            arr << ele if !arr.include?(ele)
        end
        arr
    end

    def two_sum
        pairs = []
        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                pairs << [i, j] if self[i] + self[j] == 0
            end
        end
        pairs
	end
	
	def my_transpose
		transposed = Array.new(3){[]}

		(0...self.length).each do |i|
			(0...self.length).each do |j|
				transposed[j] << self[i][j]
			end
		end

		transposed
	end

	def stock_picker
		pair = []
		max_profit = 0

		(0...self.length).each do |i|
			(i + 1...self.length).each do |j|
				if self[j] - self[i] > max_profit
					pair = [i, j]
					max_profit = self[j] - self[i]
				end
			end
		end

		pair
	end
end