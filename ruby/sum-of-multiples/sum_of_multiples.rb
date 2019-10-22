class SumOfMultiples
  def  initialize(*args)
    @multipliers = args
  end
  def to(n)
    total = 0
    for i in 1..n-1 do
      @multipliers.each do |multiplier| 
        if i % multiplier == 0 then 
          total += i 
          break
        end
      end      
    end
    total
  end
end