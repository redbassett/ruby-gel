require './gels.rb'

module Gel
  
  @gels = gels
  
  def self::gels(*codes)
    if codes.length > 0
      result = []
      codes.each { |code| result.push get_gel_by_code(code) }
      result
    else
      @gels
    end
  end
  
  def self::rgb(code)
    Gel::get_gel_by_code(code)[:rgb]
  end
  
  def self::name(code)
    Gel::get_gel_by_code(code)[:name]
  end
  
  private
    def self::get_gel_by_code(code)
      returns = @gels.select { |gel| gel[:code] === code.upcase }
      returns[0]
    end
end
