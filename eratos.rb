# -*- coding: utf-8 -*-
class Eratosthenes
  def self.primes(upper)
    primes = []
    candidates = (2..upper).to_a

    begin
      prime = candidates.shift
      primes << prime
      candidates.reject!{|candidate| candidate % prime == 0 }
    end while prime <= Math.sqrt(upper)

    return primes + candidates
  end
end

if __FILE__ == $0
  if ARGV.size != 1
    puts "引数は1つにしましょうね"
    exit 64
  end

  upper = ARGV[0].to_i

  if upper < 2
    puts "2以上の正数を指定してください"
    exit 65
  end

  puts Eratosthenes.primes(upper).join(", ")
end
