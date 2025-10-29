class Calculator
    def add(string_of_numbers)
        string_of_numbers = escape_new_line_delimiter(string_of_numbers)
        numbers_array = string_of_numbers.split(",")
        numbers_array.map(&:to_i).sum
    end

    def escape_new_line_delimiter(string_of_numbers)
        string_of_numbers.gsub("\n", ",")
    end
end
