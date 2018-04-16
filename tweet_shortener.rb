require 'pry'

def dictionary
  dictionary = {"hello" => "hi",
                "to" => "2",
                "two" => "2",
                "too" => "2",
                "for" => "4",
                "four" => "4",
                "be" => "b",
                "you" => "u",
                "at" => "@",
                "and" => "&"}
end

def word_substituter(str)
  arr = str.split(" ")

  arr.collect do |w|
    if dictionary.keys.include?(w.downcase)
      w = dictionary[w.downcase]
    else
      w
    end
  end.join(" ")
end

def bulk_tweet_shortener(str)
