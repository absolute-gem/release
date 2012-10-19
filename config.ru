require File.expand_path(File.dirname(__FILE__) + '/app/example')

Absolute::post_received do |data|

    STDERR << "RECEIVED: #{data}\n"

end

run Absolute::App
