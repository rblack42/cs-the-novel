Converting Numbers
##################

..  include::   /header.inc

As a computer professional, you should be able to convert numbers between at
least the most common bases, without needing help from a calculator. (Yes, I
know, you are never working without access to one, but, still, you should know
this!)

Normally, we only work with *decimal*, *binary*, and *hexadecimal*. On rare
occasions, you might need to work with *octal*, but we will ignore that here.

Notation
********

In printed form, numbers could be anything. By convention, unless indicated by
specific notation, all numbers should be assumed to be in *decimal*. You are
used to this, so we do not change that just because we are studying computer
systems.

If the number is in some other base, that base is indicated by special
notation. One common notation uses a trailing letter to indicate the base:

    * (none) - decimal

    * "b" = binary. (01001b)

    * "h" - hexadecimal. (0badh)

    * "o" - octal

..  warning::

    All numbers *must* start with a leading digit. Otherwise they can be
    confused with weird variable names!

Other notations are also seen. In C/C++, 0x123 is a hexadecimal notation.

Converting between Bases
************************

Converting numbers from one base to another is fairly simple for the bases we
computer people use:

Binary to Decimal
=================

This is easy, just create a table of powers of two, and add up the digit values
as needed

Example:

..  csv-table::

    1,00001
    2,00010
    4,00100
    8,01000
    16,10000

Convert 01011b to decimal:

    * 1*1 + 1*2 + 0*4 + 1*8 = 11

Binary to Hexadecimal
=====================

Write down your binary number and extend it (with zeros) as needed to create a
multiple of four digits.

2. Break up the number into groups of four digits

3. Use a table of hex to decimal values, and write down the hex characters

Example:

    1. Convert 011100110 to hexadecimal:

    2. 1110 0110 (we dont need 4 extra zeros here)
    
    3. E 4

The result is 0E4h (remember to add the leading digit in this case!)

To convert between bases, use this simple approach:

Decimal to Binary
=================

This one takes a bit more work, but this scheme works well, and is easy to
remember:

    1. Divide the number by 2. Record the result (whole number) and write down the
       remainder as the right-most digit.

    2. Divide the result from the previous step by 2 and record the result
       (whole number). Write the remainder to the left of the previous digit

    3. Repeat step 2 until the result is zero.

example:

    * 23 (decimal) to binary:

    * 23/2 = 11 r=1 -> 1

    * 11/2 = 5 r=1 -> 11

    * 5/2 = 2 r=1 -> 111

    * 2/2 = 1 r=0 -> 0111

    * 1/2 = 0 r=1 -> 10111

Let's see: (1*16)+(0*8)+(1*4)+(1*2)+(1*1) = 23, so this is correct!

Decimal to Hexadecimal
======================

The previous scheme will work, but dividing by 16 is too hard to do without
cheating and using a calculator. Instead convert the number to binary and split
out the bits in groups of 4 (add extra leading zeroes if needed) and use a
table to pick out the symbol.

Example:

    * 23 (decimal) to hexadecimal

    * binary is 10111 -> 0001 0111 -> 17h
      
    * Check: (1*16)+(7*1) = 23

(You should be able to create this table of symbols by just counting in binary
from 0-15 and writing down the hexadecimal symbols)


Hexadecimal to Decimal
======================

You could create a table of powers of 16, but why bother!

    1. Convert your hex number to binary (using your table of values)
    
    2. Proceed using the binary to decimal scheme to get your result.

What about Negative Numbers?
****************************

The sign in your number tells you that this is to be encoded as two's
compliment form. Create the binary form, and encode it as a hex number if
needed.

To reverse the process, assuming you know it is a signed number, reverse the
two's compliment process to get the positive binary value, then convert that to
decimal.

Example:

    1. Given -123, convert to hex

    2. 123 = 01111011 (we need that leading 0 to do the conversion correctly)

    3. Compliment that = 10000100, add 1 = 10000101

    4. 1000 0101 = 85h

 
Example:

    1. Given 0FF85h and you are told it is a 16-bit two's compliment number. Convert
       to decimal

    2. Convert to binary: = 1111111110000101

    3. Subtract 1 = 1111111110000100

    4. Compliment = 0000000001111011

    5. Convert to decimal = 1 + 2 + 8 + 16 + 32 + 64 = 123

    6. Remember to add in the sign: -123  

    ,,  note::

        Your PC (or Mac) has a calculator program. If you check that program,
        odds are it supports a programmer's mode where you can do conversions
        like this easily. Sadly, you will not be able to use that on an exam.
        But you can practice a bit before the exam, to make sure you can do
        these conversions if needed (hint, they will be needed!)

        Pick a problem, do it by hand, then fire up the calculator and check
        your work. 

