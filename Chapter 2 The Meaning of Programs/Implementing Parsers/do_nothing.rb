class DoNothing
  def to_s
    "do-nothing"
  end

  def inspect
    "<#{self}>"
  end

  def evaluate(environment)
    environment
  end

  def to_ruby
    "-> e { e }"
  end
end
