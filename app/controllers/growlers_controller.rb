class GrowlersController < ApplicationController
  set :views, Proc.new { File.join(root, "views/growls")}

  get '/growls' do
    @growls = Growl.all.order("id desc")
    erb :index
  end

  post '/growls' do
    growl = Growl.new(params["growl"])
    growl.save
    redirect '/growls'
  end

  get '/nope' do
    erb :nope
  end

  # get '/growls/new' do
  #   erb :add_growl
  # end

  get '/growls/:id' do
    @growl = Growl.find(params["id"])
  erb :show
  end
end
