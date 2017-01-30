class Book
   attr_accessor :title

    def title
        words_to_ignore = ["and", "the", "in", "of", "a", "an"]
        input = @title.split(" ")
        input[0].capitalize!
        input[1..input.length-1].each{|x| x.capitalize! unless words_to_ignore.include? x}
        return input.join(" ")
    end
end
