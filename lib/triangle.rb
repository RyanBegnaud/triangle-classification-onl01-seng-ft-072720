class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind 
    if @length1 == @length2 && @length2 == @length3
      :equilateral
    elsif @length2 == @length3
      :isosceles
    elsif @length1 == @length3
      :isosceles
    elsif @length1 == @length2 
      :isosceles
    elsif @length1 != @length2 && @length2 != @length3 
      :scalene
    end
  end
  
  class TriangleError < StandardError
end
end
