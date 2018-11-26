class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def triangle?
    @side1_int = @side1.to_i
    @side2_int = @side2.to_i
    @side3_int = @side3.to_i

    if (@side1_int + @side2_int > @side3_int) && (@side2_int + @side3_int > @side1_int) && (@side1_int + @side3_int > @side2_int)
      triangle_type()
    else
      @response = "This is not a triangle"
      @response
    end
  end

  def triangle_type
    if @side1_int == @side2_int && @side2_int == @side3_int && @side1_int == @side3_int
    @response = "equilateral"
    @response
    elsif @side1_int == @side2_int || @side2_int == @side3_int || @side1_int == @side3_int
      @response = "isosceles"
      @response
    elsif @side1_int != @side2_int && @side2_int != @side3_int && @side1_int != @side3_int
      @response = "scalene"
      @response
    end
  end
end
