require "open-uri"

class Apisearch

  attr_reader :total_items
  attr_reader :total_hits
  attr_reader :items

  @url = ''
  @app_id = ''
  @token = ''

  def initialize(params = {})
    @url = params[:url] || ''
    @app_id = params[:app_id] || ''
    @token = params[:token] || ''
  end

  def search
    if @query
      query_result = URI.parse(@query).read
      set_query_results(query_result)
    else
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
    @query = @url + "/v1?app_id=" + @app_id + "&token=" + @token + "&query={\"q\":\"#{query_text}\"}"
  end

  def set_query_results(query)
    @total_items = 0
    @total_hits = 0
    @items = []
  end

end
