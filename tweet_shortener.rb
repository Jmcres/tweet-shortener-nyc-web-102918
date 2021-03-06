# Write your code here.
require "pry"

def dictionary
  convert = {
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
    tweet.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.map do |result|
    puts word_substituter(result)
  end
end


def selective_tweet_shortener(tweet)
  tweet.split(" ").map do |word|
    if word.length > 140
      word_substituter(word)
      elsif word.length <= 140
      word
    end
  end
end

def shortened_tweet_truncator(tweet)
  tweet.split(" ").map do |word|
    if word.length > 140
      word_substituter(word)[0..140] + "..."     
      elsif word.length <= 140
      word
    end
  word.Join(" ")
end