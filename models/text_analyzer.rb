# Your TextAnalyzer model code will go here.
class TextAnalyzer

    attr_accessor :text

    def initialize(phrase)
        @text = phrase
    end

    def self.how_many_words(string)
        string = string.split(' ')
        string.length
    end

    def self.how_many_vowels(string)
        string = string.split(/[aeiou]/)
        string.length
    end

    def self.how_many_consonants(string)
        string = string.split(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
        string.length
    end

    def self.most_common_letter(string)
        string = string.downcase
        s = string.split(' ').join()
        s = s.split('')
        word_count = Hash.new(0)
        s.each {|l| word_count[l] += 1}
        s = word_count.sort_by { |key, val| val}.last[0]
        c = string.split(' ').join().split('').select{|l| l == s}.length
        s = word_count.sort_by { |key, val| val}.last[0]
        [s.upcase, c]
    end


end