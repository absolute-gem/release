require 'spec_helper'

Absolute::post_received do |data|; end

describe Absolute::App do

  it 'yields posted data' do

    Absolute::instance_variable_get(:@post_block).should_receive( 

      :yield ).with( { "data" => "Alfven wave" } 

    )

    post '/', { 

      data: 'Alfven wave' 

      #
      # curoisity |noun| ~ http://en.wikipedia.org/wiki/Alfv%C3%A9n_wave#Heating_the_Corona
      #

    }.to_json, "CONTENT_TYPE" => "application/json"

  end

end
