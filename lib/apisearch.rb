require 'net/http'
require 'apisearch/model'
require 'apisearch/search'

class Apisearch

  @url = ''
  @app_id = ''
  @token = ''

  def initialize(params = {})
    params.url.value  ? @url = params.url.value : raise 'No url'
    params.url.app_id ? @app_id = params.app_id.value : raise 'No app id'
    params.url.token  ? @token = params.token.value : raise 'No valid token'
  end

  def search

  end

  def set_query(query)
    @query = query
  end

  def test_connection
    puts "Testing connection!"
  end

end
