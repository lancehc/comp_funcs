def my_fun(prime, factors[prime])
end

def do_factors(n)
  factors = []
  (n+1).times{factors << []}
  prime = 2
  while(prime <= n) do
    if(!factors[prime].first)
      pinc = prime
      while(pinc <= n)
        i = pinc
        while(i <= n) do
          factors[i] << prime
          i += pinc
        end
        pinc *= prime
      end
    end
    my_fun(prime, factors[prime])
    prime += 1
  end
end

do_factors(n)
