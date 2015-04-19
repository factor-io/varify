require 'ostruct'
require 'varify/base'

class OpenStruct
  def varify(key, options = {})
    Varify::Base.varify(key, self.marshal_dump, options)
  end
end