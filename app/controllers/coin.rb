# Create a coin
get '/coin/new' do
  if current_user
    erb :'coin/new'
  else
    redirect('/login')
  end
end

post '/coin/new' do
  coin = current_user.coins.create(params[:coin])
  if coin.save
    redirect("/user/#{current_user.id}")
  else
    session[:error] = coin.errors.messages
    redirect('/coin/new')
  end
end

# Edit a coin
get '/coin/:coin_id/edit' do
  @coin = Coin.find(params[:coin_id])
  if @coin.user == current_user
    erb :'coin/edit'
  else
    redirect('/')
  end
end

put '/coin/:coin_id/edit' do
  coin = Coin.find(params[:coin_id])
  coin.update(params[:coin])
  if coin.save
    redirect("/user/#{current_user.id}")
  else
    session[:error] = coin.errors.messages
    redirect("/coin/#{coin.id}/edit")
  end
end

# Delete a coin
delete '/coin/:id' do |id|
  @coin = Coin.find(id)
  @coin.destroy
  redirect('/')
end
