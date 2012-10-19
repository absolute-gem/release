module Absolute

  class << self

    def post_block

      @post_block

    end

    def post_received( *args, &block )

      @post_block = block

    end

  end

  class App < Sinatra::Base

    post '/' do

      request.body.rewind

      Absolute::post_block.yield JSON.parse( request.body.read )

      [200, 'okgood']

    end

  end

end
