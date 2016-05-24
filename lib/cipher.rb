=begin
#This prompts user for input from command line.
puts "Please enter some text."
text_input = gets.chomp
puts "Please enter how many positions it should be shifted"
shift_input = gets.chomp.to_i
=end


# def caesar_cipher(text, shift)
# 	modelo_shift = shift%26 
# 	modelo_shift = 26 if modelo_shift == 0 #Necessary for when shift is a multiple of 26
# 	0.upto(text.length-1) do |letter|
# 		if text[letter] =~ (/[A-Za-z]/)
# 			if ((65..90) === (text[letter].ord+modelo_shift)) || ((97..122) === (text[letter].ord+modelo_shift) && text[letter] =~ (/[a-z]/))
# 				text[letter] = (text[letter].ord + modelo_shift)
# 			elsif  text[letter] =~ (/[A-Z]/)
# 				text[letter] = ((((text[letter].ord) + modelo_shift)-91) + 65).chr
# 			elsif  text[letter] =~ (/[a-z]/)
# 				text[letter] = ((((text[letter].ord) + modelo_shift)-123) + 97).chr
# 			end

# 	end
# end
# text
# end

# caesar_cipher("hello", 15)

def caesar_cipher(text, shift)
	modelo_shift = shift%26
	modelo_shift = 26 if modelo_shift == 0 #Necessary for when shift is a multiple of 26
	message = text.split("")
	message.map! do |character|
		if character =~ (/[A-Za-z]/)
		# 	if ((65..90) === (text[letter].ord+modelo_shift)) || ((97..122) === (text[letter].ord+modelo_shift) && text[letter] =~ (/[a-z]/))
		# 		text[letter] = (text[letter].ord + modelo_shift)
		# 	elsif  text[letter] =~ (/[A-Z]/)
		# 		text[letter] = ((((text[letter].ord) + modelo_shift)-91) + 65).chr
		# 	elsif  text[letter] =~ (/[a-z]/)
		# 		text[letter] = ((((text[letter].ord) + modelo_shift)-123) + 97).chr
		# 	end

	end
end
message.join(" ")
end

caesar_cipher("hello world", 0)

#ABCDEFGHIJKLMNOPQRSTUVWXYZ
#abcdefghijklmnopqrstuvwxyz
