# Ceasar's cypher
# https://en.wikipedia.org/wiki/Caesar_cipher
# https://stackoverflow.com/questions/41338764/ruby-caesar-cipher-explanation
  

def c_cypher(string, number)
    c_string = "" #initialize empty string
 
    string.scan(/./) do |i|
        if ("a".."z").include? (i.downcase) # identify only letters
            number.times {i = i.next} # shift letter number number times
        end
        c_string << i[-1]
    end
    return c_string
 
end
 
print "Enter string to encrypted using Ceasar's Cypher: "
text = gets.chomp
print "Enter required number of rotations: "
n_rot = gets.chomp.to_i
 
puts c_cypher(text, n_rot) 
