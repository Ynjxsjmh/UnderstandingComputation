class TMRule < Struct.new(:state, :character, :next_state,
                          :write_character, :direction)
  def applies_to?(configuarion)
    state == configuarion.state && character == configuarion.tape.middle
  end
end
