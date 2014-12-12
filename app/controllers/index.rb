get '/' do
  # Look in app/views/index.erb
  coins = Coin.all
  @random_coin = coins.sample
  erb :index
end
