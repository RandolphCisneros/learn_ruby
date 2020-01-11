#write your code here

$vowels = ['a', 'e', 'i','o', 'u']

def translate input
    words = input.split
    wordResultArray = []

    words.each do |word|
        result = ""

        if $vowels.include?(word.chars.first.downcase)
            wordResultArray << word + "ay"
        else
            charArray = word.chars
            while !$vowels.include?(charArray.first.downcase)
                if charArray.first == "q"
                    charArray = charArray.rotate(1)
                    if charArray.first == "u"
                        charArray = charArray.rotate(1)
                    end
                else
                    charArray = charArray.rotate(1)
                end
            end
            wordResultArray << charArray.join + "ay"
        end
    end
    wordResultArray.join(" ")
end
