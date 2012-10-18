module Absolute

  module App

    class << self

      def call( env )

        response = "absolute"

        headers = {}
        headers['Content-Length'] = response.length.to_s
        headers['Content-Type'] = "text/html"

        [200, headers, response]

      end

    end

  end

end
