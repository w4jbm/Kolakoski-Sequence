/******************************************************************************
Calculate the Kolakoski Sequence

by James McClanahan, W4JBM

Original Version in BASIC written in May 2018.

C version written in February 2019.

*******************************************************************************/

#include <stdio.h>

int main ()
{

/*  i array holds the sequence; first two elements are initilized
    p1 points into the array where we are now "getting" values
    p2 points into the array where we are now "putting" values
    n1 is the current "value" loading into the array
    n2 is the other "value" and we "swap" them as needed
    x is used as a temporary index in the for() loop
*/

  int i[60] = { 0, 1, 2 };
  int n1 = 2, n2 = 1, p1 = 2, p2 = 2, x;

  while (p2 < 57)
    {
      /* We start by expanding i[] with p2 as the pointer to the last
         known value and p1 as the pointer to the last value processed
         in the run length encoding. */

      for (x = 1; x <= i[p1]; x++)
	{
	  i[p2 + x - 1] = n1;
	}

      /* After the new values have been "decoded" from the run length
         encoding, p2 is updated to the new end of the decoded portion
         of the array and p1 is updated to point to the new 'last
         location decoded' in the array. */

      p2 = p2 + i[p1];
      p1++;

      /* n1 is the value being loaded into the array and n2 is The
         'other' value. We swap them before we go through the next round
         of decoding. */

      swap (&n1, &n2);

      /* The while() loop continues as long as we have some array
         space remaining. Since we don't know if the value last decoded
         will be a 1 or 2, the array is just oversized to avoid having
         to implement any additional truncation logic. */

    }

  /* Once we have reached "the end", print out the values in the
     array. */

  printf ("The Kolakoski sequence decoded to %d places is:\n", p2 - 1);
  for (x = 1; x < p2; x++)
    {
      printf ("%d", i[x]);
    }

  printf ("\n");


  return 0;
}


/* SWAP function is called by 'swap(&x , &y);' */

void
swap (int *a, int *b)
{
  int t;

  t = *b;
  *b = *a;
  *a = t;
}


