class Book

    attr_accessor :title

    def initialize
    end

    def title
        returnedTitle = []
        small_words = %w[a aboard about above across after against along amid among an and anti around as at before behind below beneath beside besides between beyond but by concerning considering despite down during except excepting excluding following for from in inside into like minus near nor of off on onto opposite or outside over past per plus regarding round save since than the through to toward towards under underneath unlike until up upon versus via with within without]
        
        @title.split.each do |word|
            if !small_words.include?(word)
                word = word.capitalize
            end
            returnedTitle << word
        end
        returnedTitle.join(" ")
    end

end
