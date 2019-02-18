# frozen_string_literal: true

require_relative "verb_presenter"

module OJAD
  class Verbs
    def initialize(html)
      @html = html
    end

    def to_a
      verbs.map do |verb_document|
        VerbPresenter.new(verb_document)
      end
    end

    private

    attr_reader :html

    def document
      @_document ||= Nokogiri.parse(html)
    end

    def verbs
      document.css('tr[id^="word_"]')
    end
  end
end
