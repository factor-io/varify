require 'varify/rules/rule'

module Varify
  module Rules
    class IsARule < Rule
      def valid?
        @value.is_a?(@options)
      end

      def error_message
        "#{@name} (:#{@key}) must be a #{@options.name}"
      end
    end
  end
end