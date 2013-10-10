class ArticlesController < ApplicationController
  def show
    conn = Faraday.new(:url => 'http://bw-wordpress-blog.herokuapp.com/') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end
      response = conn.get '/?json=1'     # GET http://sushi.com/nigiri/sake.json
      @content = JSON.parse(response.body)
  end
  ## GET ##
end