require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
  end
  post '' do
    @piglatin = PigLatinizer.new(params[:user_text])
    erb :output
  end
end