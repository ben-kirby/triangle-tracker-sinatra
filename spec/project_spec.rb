require('rspec')
require('project')

describe(Triangle) do
  describe("triangle?") do
    it("returns false if it is not a triangle")do
      test_triangle = Triangle.new(2, 2, 10)
      expect(test_triangle.triangle?()).to(eq(false))
    end
    it("returns equilateral if all sides are equal")do
      test_triangle = Triangle.new(3, 3, 3)
      expect(test_triangle.triangle?()).to(eq("equilateral"))
    end
    it("returns isosceles if two sides are equal")do
      test_triangle = Triangle.new(3, 3, 5)
      expect(test_triangle.triangle?()).to(eq("isosceles"))
    end
    it("returns scalene if no sides are equal")do
      test_triangle = Triangle.new(3, 4, 5)
      expect(test_triangle.triangle?()).to(eq("scalene"))
    end
  end
end
