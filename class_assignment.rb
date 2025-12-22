class Car
  attr_accessor :brand, :color, :maximum_passenger, :max_speed
  def initialize(brand, color, maximum_passenger, max_speed)
    @brand = brand
    @color = color
    @maximum_passenger = maximum_passenger
    @max_speed = max_speed
  end
end

car_1 = Car.new("volvo", "red", 5, 100)
puts car_1.inspect

car_1.brand = "nissan"
puts car_1.brand