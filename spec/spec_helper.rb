ENV['RACK_ENV'] = 'test'

require './app/example'

require 'json'
require 'rack/test'

RSpec.configure do |conf|

  conf.include Rack::Test::Methods

end

def app 

  Absolute::App

end
