require('sinatra')
require('sinatra/reloader')
  also_reload('lib/**/*.rb')
require('./lib/count_word')


get('/') do
  erb(:form)
end

get('/result') do
  @word = params.fetch("word")
  @sentence = params.fetch("sentence")
  @result = @word.count_word(@sentence)
end
