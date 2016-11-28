require('rspec')
require('triangle')

describe(Triangle) do
  describe("#type") do
    it("returns equilateral if all sides are equal") do
      test_triangle = Triangle.new(3, 3, 3)
      expect(test_triangle.type()).to(eq("equilateral"))
    end

    it ("returns scalene if no sides are equal") do
      test_triangle = Triangle.new(3, 2, 4.5)
      expect(test_triangle.type()).to(eq("scalene"))
    end
  end
end
