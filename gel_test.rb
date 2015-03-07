require 'minitest/autorun'
require './gel.rb'

# class GelTest < Minitest::Test
	
# end

describe Gel, 'Gel module' do
	it '#gels' do
		puts Gel.gels
	end
end