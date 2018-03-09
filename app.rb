require_relative 'config/environment'
require_relative 'models/'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    p params
    @user_input = PigLatinizer.new(params[:user_phrase])
    erb :piglatin_output
  end
  
end