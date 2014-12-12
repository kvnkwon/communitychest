get '/' do
  # Look in app/views/index.erb
  @random_coin = Coin.all.sample
  erb :index
end
