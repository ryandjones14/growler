class GrowlersController < ApplicationController
  set :views, Proc.new { File.join(root, "views/growls")}

  get '/growls' do
    @growls = Growl.all

    erb :index
  end

  post '/growls' do
  growl = Growl.new(params["growl"])
  binding.pry
  growl.save
  end

  # post '/growls/add_growl' do
  #
  # end
  

  get '/growls/new' do
    erb :add_growl
  end

end
