class DTMRulebook < Struct.new(:rules)
  def next_configuration(configuarion)
    rule_for(configuarion).follow(configuarion)
  end

  def rule_for(configuarion)
    rules.detect{ |rule| rule.applies_to?(configuarion) }
  end

  def applies_to?(configuarion)
    !rule_for(configuarion).nil?
  end
end
