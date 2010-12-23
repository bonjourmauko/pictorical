

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-books'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Books engine for Refinery CMS'
  s.date              = '2010-12-23'
  s.summary           = 'Ruby on Rails Books engine for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*']
end
