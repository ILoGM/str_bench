require 'benchmark'

ITERATIONS = 1000000

def run(str, bench)
  bench.report("#{str.length + 1} chars") do
    ITERATIONS.times do
      new_string = str + 'x'
    end
  end
end

Benchmark.bm do |bench|
  run("12345678901234567890", bench)
  run("123456789012345678901", bench)
  run("1234567890123456789012", bench)
  run("12345678901234567890123", bench)
  run("123456789012345678901234", bench)
  run("1234567890123456789012345", bench)
  run("12345678901234567890123456", bench)
end
