require 'sinatra'

module Sinatra
  class Base
    set :server, %w[thin mongrel webrick]
    set :bind, '0.0.0.0'
    set :port, 8080
  end
end

get '/' do
  "Hello world"
end
