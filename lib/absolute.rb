module Absolute

  module App

    module Response

      class << self

        def each( &block )

          yield 'absolute'

        end

        def length

          'absolute'.length

        end

      end

    end

    class << self

      def call( env )

        headers = {}
        headers['Content-Length'] = Response.length.to_s
        headers['Content-Type'] = "text/html"

        [200, headers, Response]

      end

    end

  end

end
