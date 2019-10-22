class ResistorColorDuo
  COLOUR_DECODE = {"black" => 0, "brown" => 1, "red" => 2, "orange" => 3, "yellow" => 4, "green" => 5, "blue" => 6, "violet" => 7, "grey" => 8, "white" => 9}
  def self.value(inputs)
    inputs.take(2).map{|colour| COLOUR_DECODE[colour]}.join.to_i
  end
end