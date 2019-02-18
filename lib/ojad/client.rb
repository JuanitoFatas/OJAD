# frozen_string_literal: true

require "http"

require_relative "response"

module OJAD
  class Client
    def self.call(word)
      new(word).call
    end

    def initialize(word)
      @word = word
    end

    def call
      Response.new(raw_response)
    end

    private

    ENDPOINT = "ojad/search/index"
    HOST = "http://www.gavo.t.u-tokyo.ac.jp"
    private_constant :ENDPOINT, :HOST

    attr_reader :word

    def raw_response
      HTTP.get(search_url)
    end

    def search_url
      File.join(HOST, ENDPOINT, params)
    end

    def params
      File.join(
        "sortprefix:accent",
        "narabi1:kata_asc",
        "narabi2:accent_asc",
        "narabi3:mola_asc",
        "yure:visible",
        "curve:invisible",
        "details:invisible",
        "limit:20",
        "word:#{word}",
      )
    end
  end
end
