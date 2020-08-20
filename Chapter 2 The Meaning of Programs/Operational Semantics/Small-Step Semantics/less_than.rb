class LessThan < Struct.new(:left, :right)
  def reducible?
    true
  end

  def reduce
    if left.reducible?
      LessThan.new(left.reduce, right)
    elsif right.reducible?
      LessThan.new(left, right.reduce)
    else
      Boolean.new(left.value < right.value)
    end
  end

  def to_s
    "#{left} < #{right}"
  end

  def inspect
    "<#{self}>"
  end
end
