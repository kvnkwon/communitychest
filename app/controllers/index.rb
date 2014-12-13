get '/' do
  # Look in app/views/index.erb
  @test = 'TEST'
  @random_coin = Coin.all.sample
  erb :index
end
