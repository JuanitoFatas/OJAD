# frozen_string_literal: true

module OJAD
  class Response
    def initialize(http_response)
      @http_response = http_response
    end

    def body
      @body ||= http_response.body
    end

    def success?
      http_response.status.success?
    end

    def error?
      http_response.status.server_error?
    end

    private

    attr_reader :http_response
  end
end
