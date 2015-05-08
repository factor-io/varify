require 'varify/base'

class Hash
  # Extends Hash object to add support for Hash.varify to extract the hash
  # @param key [Symbol] The hash key you would like to pull and verify
  # @param options [Hash] The key/value pairs of validators you'd like to run
  # @example Extract a value
  #   {a:'b',c:'d'}.varify(:a,required:true, is_a:String)
  #   {a:'b',c:['d','e']}.varify(:b,required:true, is_a:Array[String])
  def varify(key, options = {})
    Varify::Base.varify(key, self, options)
  end
end