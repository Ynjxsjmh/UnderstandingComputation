class Add < Struct.new(:left, :right)
  def reducible?
    true
  end

  def to_s
    "#{left} + #{right}"
  end

  def inspect
    "<#{self}>"
  end
end
