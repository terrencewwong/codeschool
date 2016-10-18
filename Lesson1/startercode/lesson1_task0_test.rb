require './lesson1_task0'


abort "Make sure to define the method `full_name`!" if not defined? full_name

test_cases = [
  {
    input: ['Tammi', 'Terrell'],
    output: 'Tammi Terrell'
  },
  {
    input: ['Gladys', 'Knight'],
    output: 'Gladys Knight'
  },
  {
    input: ['Fontella', 'Bass'],
    output: 'Fontella Bass'
  },
]

def test(input, output, test_number)
  got = full_name(*input)
  if output == got
    puts "\e[32m✓ Test #{test_number}\e[39m"
  else
    puts "\e[31m✗ Test #{test_number}\e[39m"
    puts "  Expected: #{output}"
    puts "  Got: #{got}"
  end
end

test_cases.each_with_index do |test_case, index|
  test(test_case[:input], test_case[:output], index)
end

