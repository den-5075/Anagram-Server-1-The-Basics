# Add your ActiveRecord models here.

# You can create them by being in the application root directory and running, e.g.,

# rake generate:model NAME=User

class Word < ActiveRecord::Base

  def self.canonical(word)
    word.downcase.split(/\s*/).sort!.join('').to_s
  end

  def self.is_anagram?(word1,word2)
    return true if self.canonical(word1) == self.canonical(word2)
  end

  def self.find_all_anagrams(try_word)
    anagrams = []
    self.all.each do |word|
      anagrams << word.title if self.is_anagram?(word.title, try_word)
    end
    return anagrams
  end
end
