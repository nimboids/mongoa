# $LOAD_PATH.unshift(File.dirname(__FILE__))
# $LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rubygems'
require 'mongo_mapper'
require 'mongo_mapper/plugins'
require 'mongo_mapper/plugins/associations'

config = {
    'test' => {'host' => 'localhost', 'port' => 27017, 'database' => 'mongoa_test'},
}

MongoMapper.config = config
MongoMapper.connect("test")

require 'rspec'

Rspec.configure do |config|
end

require 'mongoa'
require File.expand_path(File.dirname(__FILE__) + '/../lib/mongoa/mongo_mapper/matchers')

class User
  include MongoMapper::Document
  
  key :name, String
  key :email, String
  key :email_format, String, :format => /(\A(\s*)\Z)|(\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z)/i
  
  validates_format_of :email, :with => /(\A(\s*)\Z)|(\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z)/i
end

class Post
  include MongoMapper::Document
  
  key :name, String
  key :unique_name, String
  
  validates_presence_of :name
  validates_length_of :name, :minimum => 4, :maximum => 32
  validates_uniqueness_of :unique_name
end

class PostRequired
  include MongoMapper::Document
  
  key :name, String, :required => true, :length => 32
  key :unique_name, String, :unique => true
  key :range_name, String, :required => true, :length => 0..56
end

class Within
  include MongoMapper::Document
  
  key :state, String
  
  validates_inclusion_of :state, :within => ["new", "uploaded"]
end

class WithinIn
  include MongoMapper::Document
  
  key :state, String, :in => ["new", "uploaded"]
end