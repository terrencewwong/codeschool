require './lesson1_task1'


abort "Make sure to define the method `spanish_capitalize`!" if not defined? spanish_capitalize

test_cases = [
  {
    input: ['árbol'],
    output: 'Árbol'
  },
  {
    input: ['ése'],
    output: 'Ése'
  },
  {
    input: ['íbamos'],
    output: 'Íbamos'
  },
  {
    input: ['órale'],
    output: 'Órale'
  },
  {
    input: ['único'],
    output: 'Único'
  },
  {
    input: ['typeform'],
    output: 'Typeform'
  },
]

def test(input, output, test_number)
  got = spanish_capitalize(*input)
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

