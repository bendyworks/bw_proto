require 'faraday'

class Article

  def initialize
    @conn = Faraday.new(:url => "http://bw-wordpress-blog.herokuapp.com/") do |faraday|
      faraday.use FaradayMiddleware::FollowRedirects
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  :net_http
    end
  end

  def get_post(title)
    response = @conn.get "#{title}/?json=1"
    response.body
  end
end