! Calculate Kolakoski SEQUENCE
!
! By James McClanahan, W4JBM
!
! Original in BASIC written May 2018
! FORTRAN version written February 2018
 
Program Kolakoski

Integer S, N1, N2, P1, P2, X
Integer I(60)

! S is the maximum number of digits calcluated
! (limited by arrary size)
S = 55

! I() contains the Kolakoski Sequency; initialized
! with first two numbers and we calculate the rest
I = (/1,2, (0, x=3,60)/)

! Pointers into the sequence contained in the array;
! P1 points to item to decode while P2 points to
! items decoded so far.
P1=2
P2=2

! N1 is the number we are loading into the array
! N1 and N2 toggle back and forth as we decode
N1=2
N2=1

! Add to series until we have more than S elements
    Do While (P2 < S)

! Decode this item and place it into the array
! (using line numbers because we can!)
10  Do 20 X = 1, I(P1)
    I(P2+X-1)=N1
20  continue

! toggle N1 and N2 so we are ready to decode next
! item in the sequence
    Call Swap_I(N1, N2)
    
! increment pointer to next element to decode (P1)
! after we increment where we will decode it to (P2)
    P2 = P2 + I(P1)
    P1 = P1 + 1

! go back and do it again if we aren't finished    
    End Do

! if we are finished, then print the results
    Write (*,30) p2-1
30  Format(1X, 'Calculated Kolakoski Series to ', i3, ' digits:')

40  Do 50 x=1,p2-1
    Write (*, "(i1)", advance="no") i(x)
50  Continue
    Write (*,*)

End Program Kolakoski

! Subrouteine used to swap N1 and N2
Subroutine SWAP_I(A, B)
    Implicit None
    Integer, Intent (INOUT)   :: A, B
    Integer                   :: TEMP
    TEMP = A ; A = B ; B = TEMP
End Subroutine SWAP_I

