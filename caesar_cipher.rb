def caesar_cipher(text, shift_factor)
	cipher = String.new
	text.each_byte do |character|
		if character.chr.match(/[a-zA-z]/)
			if(character > 64 && character < 91)

				character = ((character + shift_factor - 90) % 26 + 64) 
			else
				character = ((character + shift_factor - 122) % 26 + 97)
			end
		end
		cipher << character.chr

	end
	return cipher
end

puts "Enter text:"
text = gets.chomp
puts "Enter shift factor:"
shift_factor = gets.chomp.to_i
puts "Caesar Cipher: "+ caesar_cipher(text, shift_factor)