module Absolute

  class << self

    def block

      @block

    end

    def post( *args, &block )

      @block = block

    end

  end

  class App < Sinatra::Base

    post '/post/endpoint' do

      request.body.rewind

      Absolute::block.yield JSON.parse( request.body.read )

    end

  end

end
