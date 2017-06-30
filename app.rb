require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require('pry')

  get('/') do
    erb(:index)
  end

  # get('/word_numbers') do
  #   erb(:index)
  # end

  get('/word_numbers') do
    @numbers = params.fetch('count').word_count()
    erb(:word_numbers)
  end