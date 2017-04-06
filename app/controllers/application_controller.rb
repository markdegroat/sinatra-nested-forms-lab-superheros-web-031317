require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :"super_hero"
    end

    post '/teams' do
      @team_name =  params[:team][:name]
      @team_motto = params[:team][:motto]
      @members = params[:team][:members]

      params[:team][:members].each do |member_info_hash|
        Member.new(member_info_hash)
      end
      @members = Member.all
      erb :"team"
    end





end
