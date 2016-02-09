class Ship
  attr_reader :length
  def initialize(length)
    @length = length
    @across_array = []
  end

  def place(start_x, start_y, across)
    return false unless @across_array.empty?
      if across
        (start_x...start_x+@length).each do |i|
          @across_array.push([i , start_y])
        end
      else
        (start_y...start_y+@length).each do |i|
          @across_array.push([start_x, i])
        end
      end
  end

  def covers?(start_x, start_y)
    @across_array.include?([start_x, start_y])
  end

end
