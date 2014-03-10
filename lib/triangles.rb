class Triangle
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def type_of_triangle
    if @side_a== 0 || @side_b == 0 || @side_c == 0 || @side_a + @side_b < @side_c || @side_a + @side_c < @side_b || @side_b + @side_c < @side_a
     "invalid, with dimensions #{@side_a}, #{@side_b}, and #{@side_c}"
    elsif @side_a == @side_b && @side_b == @side_c
     "equilateral, with dimensions #{@side_a}, #{@side_b}, and #{@side_c}"
    elsif @side_a == @side_b || @side_b == @side_c || @side_c == @side_a
     "isosceles, with dimensions #{@side_a}, #{@side_b}, and #{@side_c}"
    else
     "scalene, with dimensions #{@side_a}, #{@side_b}, and #{side_c}"
    end
  end
end
