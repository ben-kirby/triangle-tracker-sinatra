require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/project')
require('pry')

get("/") do
  erb(:input)
end

get("/output") do
  @side1_input = params.fetch("side1")
  @side2_input = params.fetch("side2")
  @side3_input = params.fetch("side3")

  test_triangle = Triangle.new(@side1_input, @side2_input, @side3_input)

  @result = test_triangle.triangle?
  erb(:output)
end
