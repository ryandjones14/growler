class GrowlersController < ApplicationController
  set :views, Proc.new { File.join(root, "views/growls")}

  get '/growls' do
    @growls = Growl.all

    erb :index
  end

end
