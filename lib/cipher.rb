
def caesar_cipher(text, shift)
	modelo_shift = shift%26
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
