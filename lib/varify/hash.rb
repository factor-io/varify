require 'varify/base'

module Varify
  class Hash
    def varify(key, options = {})
      Varify.varify(key, self, options)
    end
  end
end