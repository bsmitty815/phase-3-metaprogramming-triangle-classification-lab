class Triangle
  # write code here
  attr_accessor :length, :width, :depth

  def initialize(length, width, depth)
    @length = length
    @width = width
    @depth = depth

  end

  def kind
    if length == width && width == depth
      return :equilateral
    elsif length == width || length == depth || width == depth
      return :isosceles
    else 
      return :scalene
    end
  end

  def sides_greater_than_zero?
    [a, b, c].all?(&:positive?)
  end

  def valid_triangle_inequality?
    a + b > c && a + c > b && b + c > a
  end

  def validate_triangle
    raise TriangleError unless sides_greater_than_zero? && valid_triangle_inequality?
  end

  class TriangleError < StandardError
  end
end

