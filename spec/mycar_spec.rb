RSpec.describe Car::MyCar do
    it "creates instance of MyCar class" do
        audi = Car::MyCar.new('audi', 'black', 2018)
        expect(audi).to be_instance_of(Car::MyCar)
    end

    it "has starting speed defined to 0" do
        audi = Car::MyCar.new('audi', 'black', 2018)
        expect(audi.speed).to eq(0)
    end

    it "increases current speed for 40 km/h" do
        audi = Car::MyCar.new("audi", "black", 2018) 
        expect(audi.speed_up).to be(40)
    end
end

