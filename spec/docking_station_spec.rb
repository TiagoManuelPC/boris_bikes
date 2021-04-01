require './lib/docking_station'

describe DockingStation do 
  
  
  
  
  describe '#release_bike' do
   it 'releases a bike' do
     bike = Bike.new
     subject.dock(bike)
     
     expect(subject.release_bike).to eq bike
   end
   it "will give an error message if theres no bikes available" do
      expect { subject.release_bike }.to raise_error('No bikes available')
     end
   
   
   it { is_expected.to respond_to :release_bike }
 end
 
   it {is_expected.to respond_to(:dock).with(1).argument}
 
   it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
   end
 
   it {is_expected.to respond_to (:dock)}
 
 it 'returns docked bikes' do
  bike = Bike.new
 
  expect(subject.dock(bike)).to eq [bike]
end
it "will give an error message if its full" do
   ::DEFAULT_CAPACITY.times {subject.dock Bike.new}
   expect { subject.dock Bike.new }.to raise_error('full')
  end
describe '#initialize'
it 'should create a constante called capacity when initialize' do
   expect(subject.capacity).to eq (subject.capacity)
end

end



