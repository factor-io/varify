require 'ostruct'
require 'varify/base'

module Varify
  class OStruct
    def varify(key, options = {})
      Varify.varify(key, self.to_h, options)
    end
  end
end