class interface MEDIATHEQUE

feature

--exemple
       methode : INT
              --precondition
              require
                     n > 0
                     n < 100
              --postcondition
              ensure
                     nombre == n

invariant
       n > 0 and n < 100
--end exemple

end -- class interface MEDIATHEQUE





--documentation
--http://www.maths.tcd.ie/~odunlain/eiffel/eiffel_course/eforb.htm
-- "Programming by Contract"

