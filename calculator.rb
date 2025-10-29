class Calculator
    def add(string_of_numbers)
        numbers = string_of_numbers.split(",")
        numbers.map(&:to_i).sum
    end
end
