require 'csv'
require './gels.rb'

module Gel
  
  @gels = gels
  
  def Gel::gels
    @gels
  end
  
  def Gel::rgb(code)
    Gel::get_gel_by_code(code)[:rgb]
  end
  
  def Gel::name(code)
    Gel::get_gel_by_code(code)[:name]
  end
  
  private
    def Gel::get_gel_by_code(code)
      returns = @gels.select { |gel| gel[:code] === code.upcase }
      returns[0]
    end
end
