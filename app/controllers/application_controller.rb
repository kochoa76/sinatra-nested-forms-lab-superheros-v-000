require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @hero_name= params[:team][:members][0][:name]
      @hero_power= params[:team][:members][0][:power]
      @hero_bio = params[:team][:members][0][:bio]




      erb :team
    end
end
