class Triangle
  attr_accessor :side1, :side2, :side3,
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if side1 = side2 = side3 
      puts :equilateral
    elsif side1 = side2 > side3
      puts :isosceles
    elsif side1 != side2 != side3
      puts :scalene
    end
  end


end
