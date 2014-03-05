require 'sinatra'
require 'sinatra/activerecord'
require 'bundler/setup'
require 'rack-flash'


configure(:development) { 
	set :database, "sqlite3:///test_app.sqlite3"
}

set :database, "sqlite3:///test_app.sqlite3"
set :sessions, true
use Rack::Flash, :sweep => true
require "./models"
#Methods
def current_user
	if session[:user_id]
	@current_user = User.find(session[:user_id])
end
end

#Routes
get "/" do
  flash[:notice] = "Whaudup Doe; Sign in!"
	erb :index

end

get "/home1" do 
	puts "These are my params"
	puts params.inspect

end

get "/food" do
	"What do I want for dinner?"
	erb :home
end 

get "/taco" do
	"I've literally been craving tacos ever since we started learning ruby"
	erb :home
end

get "/home" do 
	erb :home
end 

post "/sign-in" do
	@user = User.where(email: params[:username]).first

	if @user && (@user.password == params[:password])
		puts "Signed in. Welcome!"
		session[:user_id] = @user.id

		redirect to "/food"
	else
		redirect to "/"
	end
end



