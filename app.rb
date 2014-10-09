
class App < Sinatra::Base
  set :static, true
  set :public, File.dirname(__FILE__) + '/static'

  get '/' do
    "Hola Mundo"
  end
end
