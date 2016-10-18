require './lesson1_task2'


abort "Make sure to define the method `longest_common_prefix`!" if not defined? longest_common_prefix

test_cases_longest_common_prefix = [
  {
    input: ['Porto', 'Portuguese'],
    output: 'Port'
  },
  {
    input: ['Bozena', 'Bojana'],
    output: 'Bo'
  },
  {
    input: ['David', 'Robert'],
    output: ''
  },
]

def test_longest_common_prefix(input, output, test_number)
  got = longest_common_prefix(*input)
  if output == got
    puts "\e[32m✓ Test #{test_number}\e[39m"
  else
    puts "\e[31m✗ Test #{test_number}\e[39m"
    puts "  Expected: #{output}"
    puts "  Got: #{got}"
  end
end

puts 'Test longest_common_prefix'
test_cases_longest_common_prefix.each_with_index do |test_case, index|
  test_longest_common_prefix(test_case[:input], test_case[:output], index)
end

abort "Make sure to define the method `hipster_spelling`!" if not defined? hipster_spelling

test_cases_hipster_spelling = [
  {
    input: ['soho', 'south of houston'],
    output: 'SoHo'
  },
  {
    input: ['noho', 'north of houston'],
    output: 'NoHo'
  },
  {
    input: ['tribeca', 'triangle below canal street'],
    output: 'TriBeCa'
  },
  {
    input: ['dumbo', 'down under manhattan bridge overpass'],
    output: 'DUMBO'
  },
  {
    input: ['soma', 'south of market'],
    output: 'SoMa'
  },
  {
    input: ['nopa', 'north of the panhandle'],
    output: 'NoPa'
  },

]

def test_hipster_spelling(input, output, test_number)
  got = hipster_spelling(*input)
  if output == got
    puts "\e[32m✓ Test #{test_number}\e[39m"
  else
    puts "\e[31m✗ Test #{test_number}\e[39m"
    puts "  Expected: #{output}"
    puts "  Got: #{got}"
  end
end

puts
puts 'Test hipster_spelling'
test_cases_hipster_spelling.each_with_index do |test_case, index|
  test_hipster_spelling(test_case[:input], test_case[:output], index)
end
