require 'net/http'
require 'apisearch/model'
require 'apisearch/search'

class Apisearch

  @url = ''

  def initialize(params = {})
    params.url.value  ?   @url = params.url.vale : raise 'No url'
  end

  def connect
  end

  def self.test_connection
    puts "Testing connection!"
  end

end
