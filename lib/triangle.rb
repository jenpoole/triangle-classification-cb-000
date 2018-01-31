class Triangle
  attr_accessor :side1, :side2, :side3

  # Accept three arguments on initialization. Each argument is a length of one of the three sides of the triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if valid_triangle?
      # return, as a symbol, the triangle's type

      # knows that equilateral triangles have equal sides
      # knows that larger equilateral triangles also have equal sides
      if side1 == side2 && side1 == side3
        :equilateral
      # knows that isosceles triangles have last two sides equal
      # knows that isosceles triangles have first and last sides equal
      # knows that isosceles triangles have two first sides equal
      # knows that isosceles triangles have in fact exactly two sides equal
      elsif side1 == side2 || side1 == side3 || side2 == side3
        :isosceles
      end
      # return :scalene
    else
      # raise a custom error, TriangleError, if the triangle is invalid
      raise TriangleError
    end

  end

  def valid_triangle?
    # knows that triangles with no size are illegal
    # knows that triangles with negative sides are illegal
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      false
    # knows that triangles violating triangle inequality are illegal
    # triangle inequality: the sum of the lengths of any two sides of a triangle always exceeds the length of the third side
    elsif side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2
      false
    else
      true
    end
  end
end

# define custom error outside of the class definition of Triangle
class TriangleError < StandardError
end






# knows that scalene triangles have no equal sides
# knows that scalene triangles have no equal sides at a larger scale too
# knows that scalene triangles have no equal sides in descending order either

# knows that very small triangles are legal
