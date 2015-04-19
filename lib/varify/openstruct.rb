require 'ostruct'
require 'varify/base'

class OpenStruct
  def varify(key, options = {})
    Varify::Base.varify(key, self.to_h, options)
  end
end