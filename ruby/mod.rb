Mod = 10**9 + 7
def euclidean(a,b)
  arr = [a,b]
  r0 = arr.max
  r1 = arr.min
  s0 = t1 = 1
  s1 = t0 = 0
  while(r1 > 0)
    rn = r0 % r1
    q = r0 / r1
    sn = s0 - q * s1
    tn = t0 - q * t1
    r0 = r1
    r1 = rn
    s0 = s1
    s1 = sn
    t0 = t1
    t1 = tn
  end
  [r0, s0, t0]
end

def inversemod(n,mod)
  euclidean(n,mod)[2]
end

def binmod(n,k,mod)
  sieve = [false] * (n+1)
  coef = 1
  p = 2
  while(p <= n) do
    if(!sieve[p])
      i = p*p
      while(i <= n) do
        sieve[i] = true
        i += p
      end
      power = p
      while (power <= n) do
        count = (n / power) - (k / power) - ((n-k) / power)
        count.times do
          coef *= p
          coef = coef % mod
        end
        power *= p
      end
    end
    p += 1
  end
  coef
end

def powmod(x,pow,mod)
  result = 1
  while(pow > 0)
    if(pow %2 == 1)
      result = result * x % mod
    end
    x = x * x % mod
    pow /= 2
  end
  result
end
