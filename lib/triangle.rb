class Triangle
  attr_reader :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    triangle?
    if side1 == side2 && side2 == side3
       :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
       :isosceles
    else
       :scalene
    end
  end

  class TriangleError < StandardError
  end

  def triangle?
    triangle = [(side1 + side2 > side3), (side1 + side3 > side2), (side2 + side3 > side1)]
    [side1, side2, side3].each { |x| triangle << false if x <= 0}
    raise TriangleError if triangle.include?(false)
  end

end
