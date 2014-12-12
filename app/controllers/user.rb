get '/user/:id' do
  @coins = Coin.where(user_id: params[:id])
  erb :'/user/show'
end
