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
