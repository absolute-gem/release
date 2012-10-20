Gem::Specification.new do |spec|
  spec.name = %q{absolute}
  spec.version = '0.0.5'
  spec.summary = %q{}
  spec.date = DateTime.now.strftime( "%Y-%m-%d" )
  spec.authors = ["nomilous","","",""]
  spec.homepage = %q{https://github.com/absolute-gem/release}
  spec.files = `git ls-files`.strip.split("\n")
  spec.add_runtime_dependency 'rack'
  spec.add_runtime_dependency 'sinatra'
end
