require "car/version"

module Car
  class MyCar
    attr_accessor :color, :model, :speed
    attr_reader :year

    def initialize(model, year, color)
      @model = model
      @year = year
      @color = color
      @speed = 0
    end

    def speed_up
      @speed += 40
    end
  end
end
