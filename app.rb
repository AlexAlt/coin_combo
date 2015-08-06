require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/change') do
  @change_value = params.fetch("money_input")
  erb(:change)
end
