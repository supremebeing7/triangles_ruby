require 'rspec'
require 'triangles'

describe Triangle do
  it 'is initialized with lengths of each side' do
    test_triangle = Triangle.new(2, 2, 2)
    test_triangle.should be_an_instance_of Triangle
  end
  it 'returns an equilateral triangle based on the side lengths' do
    test_triangle = Triangle.new(2, 2, 2)
    test_triangle.type_of_triangle.should eq "equilateral"
  end
  it 'returns an isosceles triangle based on the side lengths' do
    test_triangle = Triangle.new(2, 2, 1)
    test_triangle.type_of_triangle.should eq "isosceles"
  end
  it 'returns an scalene triangle based on the side lengths' do
    test_triangle = Triangle.new(2, 3, 4)
    test_triangle.type_of_triangle.should eq "scalene"
  end
  it 'returns invalid if the side lengths are invalid' do
    test_triangle = Triangle.new(2, 2, 9)
    test_triangle.type_of_triangle.should eq "invalid"
  end

end
