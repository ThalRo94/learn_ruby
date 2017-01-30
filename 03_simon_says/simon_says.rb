#write your code here
def echo(string)
    return string
end

def shout(string)
    return string.upcase
end

def repeat(string, x=2)
    return ("#{string} "*x).strip
end

def start_of_word(string, x)
    return string[0..x-1]
end

def first_word(string)
    return string.split(" ").first
end

def titleize(string)
    words_to_ignore = ["the", "and", "over"]
    input = string.split(" ")
    input[0].capitalize!
    input[1..input.length-1].each{|x| x.capitalize! unless words_to_ignore.include? x}.join(" ")
    return input.join(" ")
end
