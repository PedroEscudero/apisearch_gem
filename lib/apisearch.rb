require "open-uri"

class Apisearch

  @url = ''
  @app_id = ''
  @token = ''

  def initialize(params = {})
    @url = params[:url] || ''
    @app_id = params[:app_id] || ''
  end

  def search
    if @query
      puts @query
      URI.parse(@query).read
    else
      URI.parse('http://apisearch.global.ssl.fastly.net/v1?app_id=54725861&token=daf93c2b-40bc-49f2-870e-f8f62ea524ad&query={"q":"music"}').read
      puts 'No query set. Please set first a query'
    end
  end

  def set_query_text(query_text)
    prepare_query(query_text)
  end

  def test_connection
    if @url && URI.parse(@url).read.status[0]==200
      puts "Connection works "
    else
      puts "Connection fails!"
    end
  end

  private

  def prepare_query(query_text)
    @query = @url + "/v1?app_id=" + @app_id + "&token=token=daf93c2b-40bc-49f2-870e-f8f62ea524ad" +"&query={'q':'#{query_text}'}"
  end

end
