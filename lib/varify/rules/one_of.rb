require 'varify/rules/rule'

module Varify
  module Rules
    class OneOfRule < Rule
      def valid?
        @options.include?(@value)
      end

      def error_message
        raise "The list of possible options must be an Array" unless @options.is_a?(Array)
        list = if @options.count >=2
          last = "'#{@options[-1]}'"
          first = @options[0..-2].map{|o| "'#{o}'"}.join(', ')
          "#{first} or #{last}"
        elsif @options.count == 1
          "'#{@options[0]}'"
        else
          raise "The list of possible values must contain at least one item"
        end
        "#{@name} (:#{@key}) must be #{list}"
      end
    end
  end
end