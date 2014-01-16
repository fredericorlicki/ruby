def parse_mail(email)
  total_name = email.to_s.split("@").first
  puts total_name
 

end

parse_mail(frederic.orlicki@lewagon.org) # => "Well done boris, you're skilled and capable"