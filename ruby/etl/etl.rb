class ETL
  def self.transform(oldScores)
    newScores =  Hash.new
    oldScores.each{|score, letters| letters.each{|letter| newScores[letter.downcase] = score}}
    newScores
  end
end