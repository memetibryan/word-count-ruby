require('sinatra')
  require('sinatra/reloader')
  require('./lib/allergy')
  also_reload('lib/**/*.rb')

  get('/') do
    erb(:index)
  end

  get('/index') do
    @allergic_foods = params.fetch("find").allergy()
    erb(:allergic_foods)
  end