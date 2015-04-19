require 'varify/rules/rule'

module Varify
  module Rules
    class RequiredRule < Rule
      def valid?
        !@value.nil?
      end

      def error_message(value)
        "#{@name} (:#{@key}) is required"
      end
    end
  end
end