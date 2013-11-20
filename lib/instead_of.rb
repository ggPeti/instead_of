module InsteadOf
  VERSION = '0.0.1'
end


class Object

  def instead_of(original)
    [original, self]
  end


  def but(*replacements)
    replacement_hash = Hash[replacements]
    replacement_hash.has_key?(self) ? replacement_hash[self] : self
  end

end