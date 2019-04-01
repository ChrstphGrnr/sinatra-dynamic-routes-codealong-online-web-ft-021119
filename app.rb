require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
    @name = params[:name]
    "Goodbye, #{@name}."
  end

  get "/multiply/:string_1/:string_2" do
    @value = params[:string_1] * params[:string_2]
    @value
  end
  

  # Code your final two routes here:

end
