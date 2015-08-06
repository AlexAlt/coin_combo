require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coin_combo') do
  @change_value = params.fetch('money_input').to_i.coin_combo()
  erb(:change)
end
