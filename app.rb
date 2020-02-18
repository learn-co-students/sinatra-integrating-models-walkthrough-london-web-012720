require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @words = TextAnalyzer.how_many_words(params[:user_text])
    @vowels = TextAnalyzer.how_many_vowels(params[:user_text])
    @consonants = TextAnalyzer.how_many_consonants(params[:user_text])
    @common = TextAnalyzer.most_common_letter(params[:user_text])
    erb :results
  end
end
