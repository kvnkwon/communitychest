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

# View a user's coins
