class TMRule < Struct.new(:state, :character, :next_state,
                          :write_character, :direction)
  def applies_to?(configuarion)
    state == configuarion.state && character == configuarion.tape.middle
  end

  def follow(configuarion)
    TMConfiguration.new(next_state, next_tape(configuarion))
  end

  def next_tape(configuarion)
    written_tape = configuarion.tape.write(write_character)

    case direction
    when :left
      written_tape.move_head_left
    when :right
      written_tape.move_head_right
    end
  end
end
