def anagrams?( a_string, another_string )
  a_string_sub =  a_string.gsub(/\s+/, "").downcase!.chars.sort!
  another_string_sub =  another_string.gsub(/\s+/, "").downcase!.chars.sort!

  a_string_sub == another_string_sub

end

def anagrams_on_steroids?( a_string, another_string )
  a_string_hash = Hash.new { |k, v| k[v] = 0 }
  another_string_hash = Hash.new { |k, v| k[v] = 0 }

  a_string_sub = a_string.gsub(/\s+/, "").downcase!.to_a
  another_string_sub =  another_string.gsub(/\s+/, "").downcase!.to_a

  a_string_sub.each { |k| a_string_hash[k] += 1 }
  another_string_sub.each { |k| another_string_hash[k] += 1 }

  a_string_hash == another_string_hash

end

# complexity = ?
puts anagrams? "Monica Lewinsky", "Nice silky woman" # => true

# complexity = ?
puts anagrams_on_steroids? "baba", "abba" # => true
