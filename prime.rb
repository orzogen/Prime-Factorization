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
        
       # beause of division, num will be 1 when all primes are found
        while num != 1
            # keeps dividing by this prime as long as it can
            while num % divisor == 0
                primes << divisor
                num = num / divisor
            end
            # when it can't divide by that prime anymore, it finds the next one
            divisor = divisor.nextPrime
        end
        primes
    end
end