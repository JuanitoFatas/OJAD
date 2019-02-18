# frozen_string_literal: true

module OJAD
  class Verb
    def initialize(document)
      @document = document
    end

    def to_human
      "Group: #{group}\n" \
      "Dictionary: #{dictionary}\n" \
      "Polite: #{polite}\n" \
      "Te: #{te}\n" \
      "Ta: #{ta}\n" \
      "Negative: #{negative}\n" \
      "Past negative: #{past_negative}\n" \
      "Ba: #{ba}\n" \
      "Causative: #{causative}\n" \
      "Passive: #{passive}\n" \
      "Imperative: #{imperative}\n" \
      "Potential: #{potential}\n" \
      "Volitional: #{volitional}\n"
    end

    private

    attr_reader :document

    def find_css(lookup)
      document.css(lookup)
    end

    def group
      find_css("td.midashi").text.strip
    end

    def dictionary
      find_css("td.katsuyo_jisho_js p").text.strip
    end

    def polite
      find_css("td.katsuyo_masu_js p").text.strip
    end

    def te
      find_css("td.katsuyo_te_js p").text.strip
    end

    def ta
      find_css("td.katsuyo_ta_js p").text.strip
    end

    def negative
      find_css("td.katsuyo_nai_js p").text.strip
    end

    def past_negative
      find_css("td.katsuyo_nakatta_js p").text.strip
    end

    def ba
      find_css("td.katsuyo_ba_js p").text.strip
    end

    def causative
      find_css("td.katsuyo_shieki_js p").text.strip
    end

    def passive
      find_css("td.katsuyo_ukemi_js p").text.strip
    end

    def imperative
      find_css("td.katsuyo_meirei_js p").text.strip.split(/\r\n/).map(&:strip).reject(&:empty?).join(", ")
    end

    def potential
      find_css("td.katsuyo_kano_js p").text.strip
    end

    def volitional
      find_css("td.katsuyo_ishi_js p").text.strip
    end
  end
end
