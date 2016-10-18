require 'sinatra'
require 'sinatra/reloader' if development?

text = nil
shift = nil
shifted_message = nil

get '/' do

	erb :index, :locals => {:text => text, :shift => shift, :shifted_message => shifted_message}
end

post '/' do
    text = params["entry"]
    shift = params["shift"]
    shifted_message = caesar_cipher(text, shift)

    erb :index, :locals => {:text => text, :shift => shift, :shifted_message => shifted_message}
end

get '/reload' do
    redirect ('/')
end


def caesar_cipher(text, shift)
    return "Text must not exceed 140 characters.<br>Try Again." if text.length > 140
	modelo_shift = shift.to_i % 26
	message = text.split("")
	cipher = Array.new
	message.map do |character|
		if character =~ (/[A-Za-z]/)
			if  character =~ (/[A-Z]/)
					cipher << (65+(((character.ord - 39) + modelo_shift)%26)).chr
			elsif  character =~ (/[a-z]/)
					cipher << (97+(((character.ord - 71) + modelo_shift)%26)).chr
			end
		else
			cipher << character
		end
	end
	cipher.join
end
