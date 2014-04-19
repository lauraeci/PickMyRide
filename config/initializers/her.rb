# config/initializers/her.rb
Her::API.setup url: "https://api.edmunds.com/api/vehicle/v2/" do |c|
  # Request
  c.use Faraday::Request::UrlEncoded

  # Response
  c.use Her::Middleware::DefaultParseJSON

  # Adapter
  c.use Faraday::Adapter::NetHttp
end