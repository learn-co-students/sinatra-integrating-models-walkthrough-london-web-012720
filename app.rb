require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    #This is the long version:
    #text_from_user = params[:user_text]
    #@analyzed_text = TextAnalyzer.new(text_from_user)

    #And this is what we should have:
    @analyzed_text = TextAnalyzer.new(params[:user_text])

    erb :results
  end
end
