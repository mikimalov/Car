RSpec.describe Car::MyCar do
    let(:audi) { Car::MyCar.new('audi', 'black', 2018) }
    let(:failure) { 'water pump failure' }

    it "creates instance of MyCar class" do
        expect(audi).to be_instance_of(Car::MyCar)
    end

    it "has starting speed defined to 0" do
        expect(audi.speed).to eq(0)
    end

    it "increases current speed for 20 km/h" do
        audi.speed_up(20)
        expect(audi.speed).to eq(20)
    end

    it "increases current speed by default" do
        audi.speed_up
        expect(audi.speed).to be(Car::MyCar::SPEED_OFFSET)
    end

    it "decreases current speed by default" do
        audi.speed_up
        audi.speed_up
        audi.slow_down
        expect(audi.speed).to eq(Car::MyCar::SPEED_OFFSET)
    end

    it "decreases current speed for 10 km/h" do
        audi.speed_up(50)
        audi.slow_down(40)
        expect(audi.speed).to eq(10)
    end

    it "changes the color of the object" do
        audi.spray_paint :white
        expect(audi.color).to eq(:white)
    end

    it "has no deffects" do
        expect(audi.defects).to be_empty
    end

    it "can add defects" do
      audi.add_defects(failure)
      expect(audi.defects).to include(failure)
    end

    it "lists all the defects" do
      audi.add_defects(:failure)
      audi.add_defects('oil leak')
      expect(audi.service_info).to eq("Defects to be fixed: #{:failure}, oil leak")
    end
end

