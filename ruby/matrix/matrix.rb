class Matrix
  def initialize(matrixString)
    @matrixString = matrixString
  end
  def rows
    rowsString = @matrixString.split("\n")
    rows = Array.new
    for i in 0..rowsString.size-1 do
      rows[i] = rowsString[i].split(" ")
    end	
    rows.map{|n| n.map!(&:to_i)}
  end
  def columns
    rows.transpose
  end
end