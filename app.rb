require 'bundler'
require 'json'
require 'sinatra'
require './lib/meu-corpus.rb'
require './lib/change-to-meu-with-natto.rb'

post '/meu?' do
  text = params[:text]
  text = meu_corpus(text.to_s)
  text = change_to_meu_with_natto(text)
  content_type :json
  data = { text: text }
  data.to_json
end

