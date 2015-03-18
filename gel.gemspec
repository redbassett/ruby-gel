require File.expand_path("../lib/version", __FILE__)

Gem::Specification.new do |s|
  s.name          = 'gel'
  s.version       = Gel::VERSION
  s.date          = '2015-03-18'
  s.summary       = 'A library of theatrical gels.'
  s.description   = 'A library of theatrical gels for use on the stage, screen, and in live entertainment. A gel (short for gelatin, which they were once, but no longer are, made from) is a piece of plastic with a specifically engineered color that is placed into a lighting instrument to color the light it outputs.'
  s.authors       = ['Harry Grillo']
  s.email         = 'harry@redbassett.com'
  s.homepage      = 'https://github.com/redbassett/ruby-gel'
  s.files         = Dir['Rakefile', '{bin,lib,test,data}/**/*', 'README.md']
  s.executables   = ['compile-gels']
end
