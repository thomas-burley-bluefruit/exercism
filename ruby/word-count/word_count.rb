class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase
  end
  def word_count
    counts = Hash.new
    words = @phrase.scan(/\b[A-Za-z0-9][A-Za-z]*[']*[a-z]*\b/)
    words.each do |word|
      if counts[word]== nil
        counts[word] = 1
      else
        counts[word]+=1
      end
    end
    counts
  end
end