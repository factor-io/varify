require 'varify/base'

class Hash
  def varify(key, options = {})
    Varify::Base.varify(key, self, options)
  end
end