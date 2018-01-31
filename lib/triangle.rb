class Triangle
  # Accept three arguments on initialization. Each argument is a length of one of the three sides of the triangle
  def initialize(side1, side2, side3)
  end

  def kind
    # raise a custom error, TriangleError, if the triangle is invalid

    # return, as a symbol, the triangle's type
    return :equilateral
    return :isosceles
    return :scalene
  end
end

# define custom error outside of the class definition of Triangle
class TriangleError < StandardError
end


# knows that equilateral triangles have equal sides
# knows that larger equilateral triangles also have equal sides
# knows that isosceles triangles have last two sides equal
# knows that isosceles triangles have first and last sides equal
# knows that isosceles triangles have two first sides equal
# knows that isosceles triangles have in fact exactly two sides equal
# knows that scalene triangles have no equal sides
# knows that scalene triangles have no equal sides at a larger scale too
# knows that scalene triangles have no equal sides in descending order either
# knows that very small triangles are legal
# knows that triangles with no size are illegal
# knows that triangles with negative sides are illegal
# knows that triangles violating triangle inequality are illegal
# knows that triangles violating triangle inequality are illegal 2
# knows that triangles violating triangle inequality are illegal 3
