# String Calculator

Simple calculator that adds numbers from a string.

## Setup

Install RSpec:
```bash
gem install rspec
```

## Running Tests

```bash
rspec spec/calculator_spec.rb
```

For detailed output:
```bash
rspec spec/calculator_spec.rb --format documentation
```

## Usage

```ruby
require './calculator'

calc = Calculator.new
calc.add("1,2")        # 3
calc.add("1,2,3")      # 6
calc.add("")           # 0
calc.add("1\n2")       # 3
calc.add("//;\n1;2")   # 3
```

## TDD Approach

Built this using test-driven development. Basically wrote tests first, then made them pass.

Started simple - empty string returns 0. Then added two numbers. Then multiple numbers. Each time wrote the test first, watched it fail, then wrote just enough code to make it pass.

Added features in this order:
1. Empty string handling
2. Two number addition
3. Multiple numbers
4. Newline delimiters
5. Custom delimiters
6. Negative number validation

The tests in `spec/calculator_spec.rb` show what the calculator should do. Run them to make sure everything works.

