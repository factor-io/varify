require 'varify/rules/rule'

module Varify
  module Rules
    class OneOfRule < Rule
      def valid?
        @options.include?(@value)
      end

      def error_message
        message = if @options.count >=2
          last  = "'#{@options[-1]}'"
          first = @options[0..-2].map{|o| "'#{o}'"}.join(', ')
          "#{@name} (:#{@key}) must be #{first} or #{last}"
        elsif @options.count == 1
          "#{@name} (:#{@key}) must be '#{@options[0]}'"
        else
          "#{@name} (:#{@key}) can't be valid because no valid options were provided"
        end
        message
      end
    end
  end
end