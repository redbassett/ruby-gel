module Gel
  module VERSION
    MAJOR = 0
    MINOR = 0
    TINY  = 1
    PRE   = 'alpha'
    
    STRING = [MAJOR, MINOR, TINY, PRE].join('.')
    
    def self.to_s
      STRING
    end
  end
end
