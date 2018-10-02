require("sinatra")
require("sinatra/contrib/all")
require("pry")

require_relative('./models/game.rb')
also_reload('./models/*') #picks up changes in the models folder

  
  get '/' do
    erb(:home)
  end

  get '/rules' do
    erb(:rules)
  end

  get '/game/:user1/:user2' do
    user1 = params[:user1]
    user2 = params[:user2]
    game = Game.new(user1, user2)
    @winner = game.compare()
    erb(:results)
  end
