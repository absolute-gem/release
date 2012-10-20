absolute.gem
============

What is absolute.gem
--------------------

Absolute provides a boilerplate near zero config base layer for web applications

### Including:

* Login and authentication integration
* Registration and subscription services


Why?
----

Becase we dont like doing things 2wice.

### Absolute has only just begun

The current version only does this:

### install absolute gem

<pre>gem install absolute</pre>

### Experiment 1

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
