require './gels.rb'

module Gel
  
  @gels = gels
  
  def Gel::gels(*codes)
    if codes.length > 0
      result = []
      codes.each { |code| result.push get_gel_by_code(code) }
      result
    else
      @gels
    end
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
