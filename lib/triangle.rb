class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:type) do
    if (@side1 + @side2 <= @side3) or (@side3 + @side2 <= @side1) or (@side1 + @side3 <= @side2)
      return "not a triangle"
    elsif (@side1 != @side2) && (@side2 != @side3) && (@side1 != @side3)
      return "scalene"
    elsif (@side1 == @side2) && (@side1 == @side3)
      return "equilateral"
    elsif (@side1 == @side2 && @side1 != @side3) or (@side3 == @side1 && @side3 != @side2) or (@side2 == @side3 && @side2 != @side1)
      return "isosceles"
    end
  end
end
