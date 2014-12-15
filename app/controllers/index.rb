get '/' do
  # Look in app/views/index.erb
  @random_coin = Coin.all.sample
  erb :index
end

get '/random_coin' do
  Coin.all.sample.to_json
end
