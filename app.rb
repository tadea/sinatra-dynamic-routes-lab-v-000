require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end

  get '/say/:number/:phrase' do
    @phrase = ""
    @number = params[:number].to_i
    @number.times do
        @phrase << " #{params[:phrase]}"
		   end
		 "#{@phrase}"
     end



end
