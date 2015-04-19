require 'varify/rules/rule'

module Varify
  module Rules
    class RequiredRule < Rule
      def valid?
        if @options
          !@value.nil? 
        else
          true
        end
      end

      def error_message
        "#{@name} (:#{@key}) is required"
      end
    end
  end
end