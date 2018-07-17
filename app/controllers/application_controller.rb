require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @hero1_name= []
      @hero1_power= []
      @hero1_bio = []
      @hero2_name=params[:team][:members][1][:name]
      @hero2_power= params[:team][:members][1][:power]
      @hero2_bio= params[:team][:members][1][:bio]
      @hero3_name= params[:team][:members][2][:name]
      @hero3_power= params[:team][:members][2][:power]
      @hero3_bio= params[:team][:members][2][:bio]




      erb :team
    end
end
