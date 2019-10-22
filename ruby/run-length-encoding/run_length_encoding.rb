class RunLengthEncoding
  def self.encode(input)
    if input.empty? then return '' end
    decoded = ""
    groups = input.scan(/((\w| )\2*)/).map(&:first)
    groups.each do |n| 
      length = if n.length == 1 then "" else n.length.to_s end
      decoded += length+n[0]
    end
    decoded
  end
  def self.decode(code)
    if code.empty? then return '' end
    characters = code.scan(/\d*[a-zA-Z ]/)
    encoded = ""
    characters.each do |c| 
      toAppend = ""
      if c.length == 1 then 
        toAppend = c 
      else 
        toAppend = [c[-1]].cycle(c[0..-2].to_i).to_a.join()
      end
      encoded << toAppend
    end
    encoded
  end
end