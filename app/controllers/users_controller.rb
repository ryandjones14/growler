class UsersController < ApplicationController
  set :views, Proc.new { File.join(root, "views/users")}

get '/users' do
  @users = User.all
  erb :index
end

  post '/users' do
    user = User.new(params["user"])

    user.save
    redirect '/users'
  end

  get '/users/new' do
    erb :add_user
  end


end
