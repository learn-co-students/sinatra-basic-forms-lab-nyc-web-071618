require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do

    erb :create_puppy
  end

  post '/new' do
    Puppy.new(params[:name],params[:breed],params[:age])
    redirect "/puppy"
  end

  get '/puppy' do
    @puppy = Puppy.all.last
    puts @puppy.name ,@puppy.breed
    erb :display_puppy
  end
end
