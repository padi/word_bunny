Gem::Specification.new do |s|
  s.name = 'word_bunny'
  s.version = '0.0.2'
  s.date = '2013-07-25'
  s.summary = 'Feeds on words, not carrots.'
  s.description = 'Tallies each word found in a given text.'
  s.authors = ['Marc Ignacio']
  s.email = 'marcrendlignacio@gmail.com'
  s.files = Dir['lib/**/*.rb']
  s.add_development_dependency('rspec', '~>2.14.1')
  s.add_development_dependency('pry', '0.9.12.2')
end
