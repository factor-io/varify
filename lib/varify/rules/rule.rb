
module Varify
  module Rules
    class Rule

      def initialize(key,name,value,options={})
        @value   = value
        @key     = key
        @name    = name
        @options = options
      end

      def valid?
        raise NotImplementedError
      end

      def error_message
        "#{@name} (:#{@key}) failed verification"
      end
    end
  end
end