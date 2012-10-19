lib = File.expand_path(File.dirname(__FILE__) + '/../lib')
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rubygems'
require 'bundler'

Bundler.setup(:default, ENV['RACK_ENV'] || 'development')
Bundler.require

require 'absolute'
