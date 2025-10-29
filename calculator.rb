class Calculator
    def add(string_of_numbers)
        string_of_numbers = escape_custom_delimiter(string_of_numbers)
        string_of_numbers = escape_new_line_delimiter(string_of_numbers)
        numbers_array = string_of_numbers.split(",")
        numbers_array.map(&:to_i).sum
    end

    private

    def escape_new_line_delimiter(string_of_numbers)
        string_of_numbers.gsub("\n", ",")
    end

    def escape_custom_delimiter(string_of_numbers)
        return string_of_numbers unless string_of_numbers.start_with?("//")

        delimiter = string_of_numbers[2]
        string_of_numbers = string_of_numbers[4..-1]
        string_of_numbers.gsub(delimiter, ",")
    end
end
