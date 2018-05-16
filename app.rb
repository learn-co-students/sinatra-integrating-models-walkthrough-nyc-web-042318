require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

# This controller class handles user input and outputs it using a template
class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    erb :results
  end
end
