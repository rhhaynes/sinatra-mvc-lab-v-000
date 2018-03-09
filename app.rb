require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    p params
    @user_input = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :piglatin_output
  end
  
end