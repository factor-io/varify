require 'varify/rules/rule'

module Varify
  module Rules
    class IsARule < Rule
      def valid?
        if @options.is_a?(Array)
          @values.all?{|i| i.is_a?(@options.first)}
        else
          @value.is_a?(@options)
        end
      end

      def error_message
        "#{@name} (:#{@key}) must be a #{@options.name}"
      end
    end
  end
end