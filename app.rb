require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    "#{parms[:name].reverse}"
  end

end
