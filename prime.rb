class Fixnum
    
    #Returns weather the number is a prime
    def prime?
        ('1' * self) !~ /^1?$|^(11+?)\1+$/
    end
    
    # Finds the next prime 
    def nextPrime
        num = self + 1
        while !num.prime?
            num += 1
        end
        num
    end
    
    #returns an array of primes that is the factorization
    def primes
    
        primes = []
        num = self
        divisor = 2
        
        #do this while the last number is still not a prime
        while !num.prime?
        	# when testing primes, it starts with two and goes up from there
            while num % divisor == 0 and !num.prime?
                primes << divisor
                num = num / divisor
            end
            # when it can't divide by that prime anymore, it finds the next one
            divisor = divisor.nextPrime
        end
        
        primes << num
    end
    
end