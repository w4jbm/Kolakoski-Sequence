# Kolakoski-Sequence

Some time back I happened across mention of the Kolakoski Sequence. Details on the sequence can be found various places, but the simplified version paraphrased from Wikipedia is, "The Kolakoski sequence is an infinite sequence of symbols {1,2} that is its own run-length encoded value. It was initially named after the William Kolakoski (1944–97) who discussed it in 1965, but subsequent research has revealed that it first appeared in a paper by Rufus Oldenburger in 1939."

Run-length encoding simply means that the value represent how long or how many instances of a particular value lasts or exist in a series.

So let’s look at the start of the sequence:

1,2,2,1,1,2,1,2,2,1,2,2,1,1,2,1,1,2,2,1,…

Now for some simple run-length encoding, how many 1s in a row, how many 2s in a row, how many 1s (for a second time) in a row, and how many 2s (for a second time) in a row? That would be:

1,2,2,1,…

When we run-length encode the first six digits of the sequence, they yield the first four digits of the sequence.

We can “unencode” our four digit series by saying the first number represents how many times 1 is repeated, the second number represents how many times 2 is repeated, the third digit goes back to the number of times 1 is repeated, and the fourth digit goes back to how many time 2 is repeated. So our 1,2,2,1,… becomes:

1,2,2,1,1,2,…

Using this general approach we can write a simple program that will "unencode" or "expand" the series starting with nothing more than the first two digits.

Originally I wrote a simple program to expand the sequency using the Brandy BASIC interpreter, but with the exception of the SWAP command should be fairly easy to port to any other vintage version of BASIC. My original write up on this is here:

https://w4jbm.wordpress.com/2018/05/28/the-kolakoski-sequence-in-basic/

Later, as a way to work on improving my minimal and somewhat rusty skills with C, I made a second pass described here:

https://w4jbm.wordpress.com/2019/02/25/the-kolakoski-sequence-revisited/

I have also written code to generate the sequence in Python and Fortran 95:

https://w4jbm.wordpress.com/2019/03/04/kolakoski-yet-again/


