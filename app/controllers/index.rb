get '/' do
  # Look in app/views/index.erb
  @coins = Coin.all
  erb :index
end
