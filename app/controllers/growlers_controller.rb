class GrowlersController < ApplicationController
  set :views, Proc.new { File.join(root, "views/growls")}

  get '/growls' do
    @growls = Growl.all
    @users = User.all
    erb :index
  end

  post '/growls' do
    growl = Growl.new(params["growl"])
    growl.save
    redirect '/growls'
  end

  get '/growls/new' do
    erb :add_growl
  end

end
