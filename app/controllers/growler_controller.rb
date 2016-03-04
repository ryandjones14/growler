class GrowlerController < ApplicationController
  set :views, Proc.new { File.join(root, "views/growls")}

  get '/' do
    @growls = Growel.all
    erb :index
  end

end
