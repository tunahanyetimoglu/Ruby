#!/usr/bin/env ruby

class Shape
  def initialize(x,*o)
    @x = x
    @y = o[0]
    @z = o[1]
    puts "#{@x}, #{@y}, #{@z}"
  end
  def area
    @x*@y
  end
end

class Square < Shape
  def initialize(a)
    super a,a,0
  end  
  def area
    super
  end
end


s = Square.new(5)
puts s.area
