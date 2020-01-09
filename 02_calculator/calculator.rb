#write your code here
def add input1, input2
    input1 + input2
end

def multiply input1, input2
    input1 * input2
end

def subtract input1, input2
    input1 - input2
end

def sum input
    value = 0
    input.each do |itemVal|
        value += itemVal
    end
    value
end

