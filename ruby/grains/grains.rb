class Grains
  def self.square(n)
    if n<1 || n>64 then raise ArgumentError end
    return (2**n)/2
  end
  def self.total
    total = 0
    for i in 1..64 do
      total += square(i)
    end
    total
  end
end