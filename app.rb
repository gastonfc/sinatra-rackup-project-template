require 'sinatra'

class App < Sinatra::Base
  set :static, true
  set :public_folder, File.dirname(__FILE__) + '/static'

  get '/' do
    erb :index
  end
end
