#write your code here
def translate(string)
    alphabet = ("a".."z").to_a
    vowels = ["a","e","o","i","u","y"]
    consonants = alphabet-vowels
    multiple_words = []

    string.split(" ").each do |x|
        if vowels.include? x[0]
            multiple_words.push(x+"ay")
        elsif x[0] == "q" && x[1] == "u"
             multiple_words.push(x.split("").rotate(2).join + "ay")
        elsif consonants.include?(x[0]) && x[1] == "q" && x[2] == "u"
            multiple_words.push(x.split("").rotate(3).join + "ay")
        elsif consonants.include?(x[0]) && consonants.include?(x[1]) && consonants.include?(x[2])
            multiple_words.push(x.split("").rotate(3).join + "ay")
        elsif consonants.include?(x[0]) && consonants.include?(x[1])
            multiple_words.push(x.split("").rotate(2).join + "ay")
        elsif consonants.include? x[0]
            multiple_words.push(x.split("").rotate.join + "ay")
        end
    end
    return multiple_words.join(" ")
end
