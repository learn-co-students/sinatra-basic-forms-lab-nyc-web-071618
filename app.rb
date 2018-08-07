require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @puppy_name = params[:name]
    @puppy_breed = params[:breed]
    @puppy_age = params[:age]
    erb :display_puppy
  end

end #end of class
