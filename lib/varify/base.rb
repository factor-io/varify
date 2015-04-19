
require 'varify/rules/required'

module Varify
  module Base
    RULES = {
      required: Varify::Rules::RequiredRule
    }

    def self.callback(&block)
      @callback = block
    end

    def self.fail(options={})
      message = options.is_a?(String) ? options : options[:message]
      raise "Fail (fail) requires a string message or hash with :message" unless message
      raise "Key (:key) is required in calling fail" unless options[:key]
      raise "Rule (:rule) is required in calling fail" unless options[:rule]

      error = {
        message: message,
        key:     options[:key],
        rule:    options[:rule]
      }

      @callback.call(error) if @callback
    end

    def self.varify(param_key, params={}, options={},&block)
      value = params[param_key] || options[:default]
      name  = params[:name] || param_key.to_s.split('_').map{|e| e.capitalize}.join(' ')
      rules = {}

      rules_to_process = options.dup
      rules_to_process.delete(:default)
      rules_to_process.delete(:name)

      rules_to_process.each do |rule_key,rule_value|
        rule_class = RULES[rule_key]
        raise "Rule ':#{rule_key}' is not defined" unless rule_class
        rules[rule_key] = rule_class.new(param_key,name,value,rule_value)
      end

      rules.each do |rule_key,rule|
        fail(message: rule.error_message(value), key: param_key, rule:rule_key) unless rule.valid?
      end

      value
    end
  end
end