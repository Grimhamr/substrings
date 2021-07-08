dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 

puts "initialized"
def substrings(phrase, dictionary)
 
    results_hash = Hash.new(0)
    puts "substrings func called"
    dictionary.each do |substring| 
                        puts "iteration on #{substring}"
                        phrase = phrase.downcase
                            unless ((phrase =~ /#{substring}/).nil?)
                            
                                results_hash[substring] = results_hash[substring] +phrase.scan(substring).length
                        
                            
                            end
                        puts "results are #{results_hash}"
                    end

end
substrings("Howdy partner, sit down! How's it going?", dictionary)
