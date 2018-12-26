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
<<<<<<< HEAD
    if @query
      Net::HTTP.get('https://apisearch.global.ssl.fastly.net', '/v1?app_id=54725861&token=daf93c2b-40bc-49f2-870e-f8f62ea524ad&query={hel}')
    else
      Net::HTTP.get('https://apisearch.global.ssl.fastly.net', '/v1?app_id=54725861&token=daf93c2b-40bc-49f2-870e-f8f62ea524ad&query={#{@query}}')
    end
=======

>>>>>>> 1b4a5b83af50840c1a6a6195d225fd87cdf4677e
  end

  def set_query(query)
    @query = query
  end

  def test_connection
    puts "Testing connection!"
  end

end
