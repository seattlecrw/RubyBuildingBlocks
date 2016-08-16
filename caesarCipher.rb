def caesar_cipher(text, key)
    text_arr = text.split("")
    coded_arr = []
    text_arr.each do |char|
        ascii = char.ord
        if char.ord.between?('A'.ord, 'Z'.ord)
            # Character is uppercase letter
            char_num = (ascii - 'A'.ord + key) % 26 
            char_num += 'A'.ord
            coded_arr.push(char_num.chr)
        elsif char.ord.between?('a'.ord, 'z'.ord)
            # Character is lowercase letter
            char_num = (ascii - 'a'.ord + key) % 26 
            char_num += 'a'.ord
            coded_arr.push(char_num.chr)
        else
            # Character is non-letter symbol
            coded_arr.push(char)
        end
    end
    puts coded_arr.join("")
end

caesar_cipher("What a string!", 5)
