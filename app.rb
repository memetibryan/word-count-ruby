require('sinatra')
  require('sinatra/reloader')
  require('./lib/word_count')
  also_reload('lib/**/*.rb')

  get('/') do
    erb(:index)
  end

  get('/numbers') do
    @numbers = params.fetch("count").to_s.word_count()
    @common = params.fetch("look").to_s.search_string()
    @result = @common.to_s.search_string()
    erb(:numbers)
  end