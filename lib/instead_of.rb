module InsteadOf
  VERSION = '0.0.2'
end


class Object

  def instead_of(original)
    [original, self]
  end


  def but(*replacements)
    replacement_hash = Hash[replacements]
    return replacement_hash.find { |k, _| k.respond_to?(:nan?) && k.nan? }[1] if respond_to?(:nan?) && nan?
    replacement_hash.has_key?(self) ? replacement_hash[self] : self
  end

end