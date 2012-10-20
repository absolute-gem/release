Gem::Specification.new do |spec|
  spec.name = %q{absolute}
  spec.version = '0.0.4'
  spec.summary = %q{}
  spec.date = DateTime.now.strftime( "%Y-%m-%d" )
  spec.authors = ["nomilous","","",""]
  spec.files = `git ls-files`.strip.split("\n")
  spec.add_runtime_dependency 'rack'
  spec.add_runtime_dependency 'sinatra'
end
