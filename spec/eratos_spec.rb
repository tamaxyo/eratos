# -*- coding: utf-8 -*-
require File.expand_path(File.dirname(__FILE__) + '/../eratos')

describe Eratosthenes do
  specify { expect(Eratosthenes.primes(2)).to eq [2] }
  specify { expect(Eratosthenes.primes(3)).to eq [2, 3] }
  specify { expect(Eratosthenes.primes(4)).to eq [2, 3] }
  specify { expect(Eratosthenes.primes(9)).to eq [2, 3, 5, 7] }
  specify { expect(Eratosthenes.primes(30)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }
end
