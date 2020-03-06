require "car/version"

module Car
  class MyCar
    SPEED_OFFSET = 20
    attr_accessor :color, :model, :speed
    attr_reader :year, :defects

    def initialize(model, year, color)
      @model = model
      @year = year
      @color = color
      @speed = 0
      @defects = []
    end

    def speed_up(increase = SPEED_OFFSET)
      @speed += increase
    end

    def slow_down(decrease = SPEED_OFFSET)
      @speed -= decrease
    end

    def spray_paint(arg)
     @color = arg
    end

    def add_defects(defects)
      @defects.push(defects)
    end

    def service_info
      "Defects to be fixed: #{@defects.join(', ')}"
    end
  end
end
