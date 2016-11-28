require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  # @side1 = params.fetch("side1").to_i
  # @side2 = params.fetch("side2").to_i
  # @side3 = params.fetch('side3').to_i
  triangle_input = Triangle.new(params.fetch("side1").to_i, params.fetch("side2").to_i, params.fetch("side3").to_i)
  @triangle_output = triangle_input.type()
  erb(:result)
end
