

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-writers'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Writers engine for Refinery CMS'
  s.date              = '2010-12-19'
  s.summary           = 'Ruby on Rails Writers engine for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*']
end
