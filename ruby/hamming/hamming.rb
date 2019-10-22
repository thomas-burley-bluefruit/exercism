class Hamming
  def self.compute(strand1, strand2)
    if strand1.length != strand2.length
	  raise ArgumentError
	end
	deviations = 0
	for i in 0..strand1.length-1 do
	  if strand1[i] != strand2[i]
        deviations += 1
      end
    end
  deviations
  end
end
	