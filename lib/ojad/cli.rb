# frozen_string_literal: true

require_relative "client"
require_relative "result"

module OJAD
  class CLI
    def self.start(arguments:)
      new(arguments).start
    end

    def initialize(arguments)
      @arguments = arguments
    end

    def start
      Result.new(response).to_human
    end

    private

    attr_reader :arguments

    def response
      Client.call(arguments.first)
    end
  end
end
