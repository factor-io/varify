require 'varify/rules/rule'

module Varify
  module Rules
    class BetweenRule < Rule
      def valid?
        @value.between?(@options.first,@options.last)
      end

      def error_message
        "#{@name} (:#{@key}) must be between '#{@options.first}' and '#{@options.last}'"
      end
    end
  end
end