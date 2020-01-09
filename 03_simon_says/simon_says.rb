#write your code here
def echo input
    input
end

def shout input
    input.upcase
end

def repeat input, num=1
    response = ""
    if num == 1
        response = input + " " + input
    else
        response = ((input + " ") * num) .strip
    end
    response
end

def start_of_word input, num
    word = ""
    num. times do |i|
        word += input[i]
    end
    word
end

def first_word input
    input.split.first
end

def titleize input
    small_words = %w[a aboard about above across after against along amid among an and anti around as at before behind below beneath beside besides between beyond but by concerning considering despite down during except excepting excluding following for from in inside into like minus near nor of off on onto opposite or outside over past per plus regarding round save since than the through to toward towards under underneath unlike until up upon versus via with within without]
    firstWordDone = false
    inputArr = input.split
    outputArr = []
    inputArr.each do |word|
        if !small_words.include?(word) || !firstWordDone
            outputArr << word.capitalize
            firstWordDone = true
        else
            outputArr << word
        end
    end
    outputArr.join(" ").strip
end



