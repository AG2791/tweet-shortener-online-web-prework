def dictionary
  words_replace= {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"    
  }

end

def word_substituter(tweet)
<<<<<<< HEAD
  tweet.split(" ").collect do |key| #splite tweet into array of strings and collect that array and yield to block
      if dictionary.keys.include?(key.downcase) # if word in array is included in dictionary then return true  
        key = dictionary[key.downcase] # for words in array that return true, replace with value of included dictionary key  
      else
        key # return new array 
=======
  tweet.split(" ").collect do |key|
      if dictionary.keys.include?(key.downcase)
        key = dictionary[word.downcase]
      else
        key
>>>>>>> 0d7690c7481011aef65812ad09e5be699b4d2b76
    end
  end.join(" ") #convert returned array into string with a space between each word 
end

def bulk_tweet_shortener(tweet_array) 
  tweets.each do |tweet|    # iterate through each tweet and yield to block
    puts word_substituter(tweet)  # apply the above word_substituter method to the yeilded tweet
  end
end
 
 def selective_tweet_shortener(tweet) 
  if tweet.length > 140     # if the lenght of the tweet is less than 140
    word_substituter(tweet) # then apply the word_substituter method 
  else
    tweet                 
  end
end

def shortened_tweet_truncator(tweet) 
  short = word_substituter(tweet) #  "short" is additional modifications to original word_substituter method
  if short.length > 140          # "short" => if word_substituter return tweet that is greater than 140 characters
    short[0...140]              # then shorten tweet by limiting the tweet's index to rannge between 0 and 140
  else
    short                     
  end
end
 