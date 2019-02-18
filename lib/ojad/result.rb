# frozen_string_literal: true

require_relative "verbs"

module OJAD
  class Result
    def initialize(response)
      @response = response
    end

    def to_human
      if response.success?
        verbs.each do |verb|
          verb.to_human
          puts "-"*80
        end
      else
        error_message
      end
    end

    private

    attr_reader :response

    def html
      @_response_string ||= response.body.to_s
    end

    def verbs
      Verbs.new(html).to_a
    end

    def error_message
      "An error occurred. Please try again later.\n\n" \
      "Response body:\n\n#{response.body.to_s}" \
    end
  end
end
