absolute.gem
============

### absolute is just getting started...


### install absolute gem

<pre>gem install absolute</pre>

Experiment 1
------------

### make a [Rack](http://rack.github.com/) (usually `config.ru`) file with:

<pre>
require 'absolute'

Absolute::post_received do |data|

    #
    # data is the post body
    #

    puts "\n\nDID YOU: #{data}\n\n" 

end

run Absolute::App

</pre>

### start the rack (up)

<pre>rackup config.ru</pre>

### post a spot of json 

<pre>

curl -i -X POST -d '{"c":"this"}' http://localhost:9292

</pre>

