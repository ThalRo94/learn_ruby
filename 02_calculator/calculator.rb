#write your code here
def add(x,y)
    return x+y
end

def subtract(x,y)
    return x-y
end

def sum(array)
    var = 0
    array.each do |x|
        var += x
    end
    return var
end

def multiply(*x)
    x.reduce(:*)
end

def power(x,y)
    return x**y
end

def factorial(x)
    (1..x).inject(:*) || 1
end