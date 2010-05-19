# The MIT License
# 
# Copyright (c) 2008 Nick Ludlam
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

module MythTV
  VERSION = '0.4.0'
  
  def self.connect(options)
    backend = connect_backend(options)
    database = connect_database(options)
    
    [backend, database]
  end
  
  def self.connect_backend(options)
    Backend.new(options)
  end
  
  def self.connect_database(options)
    Database.new(options)
  end
  
end

$:.unshift(File.dirname(__FILE__))

# Moved to dabase.rb for now...
# require 'rubygems' 
# gem 'activerecord', '2.2.2' 
# require 'activerecord' 
# gem 'composite_primary_keys', '2.2.2' 
# require 'composite_primary_keys'
#require 'mysql'


require 'mythtv/backend.rb'
require 'mythtv/database.rb'
require 'mythtv/channel.rb'
require 'mythtv/program.rb'
require 'mythtv/protocol.rb'
require 'mythtv/recording.rb'
require 'mythtv/recording_schedule.rb'
require 'mythtv/setting.rb'
require 'mythtv/utils.rb'
