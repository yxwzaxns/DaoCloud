require 'sinatra'
require 'influxdb'

module Sinatra
  class Base
    set :server, %w[thin mongrel webrick]
    set :bind, '0.0.0.0'
    set :port, 8080
  end
end

get '/' do
  # body "welcome,this is a info about MySQL:
  # host:#{ENV['MYSQL_PORT_3306_TCP_ADDR']}
  # username:#{ENV['MYSQL_USERNAME']}
  # password:#{ENV['MYSQL_PASSWORD']}
  # port:#{ENV['MYSQL_PORT_3306_TCP_PORT']}
  # database:#{ENV['MYSQL_INSTANCE_NAME']}"
  res=$storage.insert
  body res.to_s

end

get '/get/:score' do
  $storage.populate(params['score'])
end

get '/get/:key' do
  $storage.insert(params['key']).to_s
end

get '/create_database/:dbname' do
  $storage.create_database params['dbname']
  redirect to('/')
end
class Storage
  def initialize()
    @db = InfluxDB::Client.new(
      # :host => ENV['MYSQL_PORT_3306_TCP_ADDR'],
      # :username => ENV['MYSQL_USERNAME'],
      # :password => ENV['MYSQL_PASSWORD'],
      # :port => ENV['MYSQL_PORT_3306_TCP_PORT'],
      # :database => ENV['MYSQL_INSTANCE_NAME']
      :host => 'localhost',
      :username => 'aong',
      :password => '1234'
      :database => 'mydb'
      )
      # if @db.list_databases.any? { |e| e['name'].include?("mydb")}
    # @db.create_database('mydb')
  end

  def insert(key)
    data = {
      values: { value: key },
    }
    @db.query(data)
  end

  def create_database(dbname)
    until @db.list_databases.any? { |e| e['name'].include?(dbname)}
      @db.create_database(dbname)
    end
  end
end

$storage = Storage.new
