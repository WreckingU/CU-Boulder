/* 
 * CS:APP Data Lab 
 * 
 * <Name:Kyle Coffey UserID:kyco1662>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;             
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
         
/* 
 * bitNor - ~(x|y) using only ~ and & 
 *   Example: bitNor(0x6, 0x5) = 0xFFFFFFF8
 *   Legal ops: ~ &
 *   Max ops: 8
 *   Rating: 1
 */
 
/* --DONE!
1. Binary "~" one's compliment is unary and basically inverts all bits. For example if I have x = 01000001(Decimal:65) and I do the operation ~x the result will be 10111110 in Decimal it is 190 and in signed 2's complement it is -66.

2. Binary "&" copies a bit to the result if it exists in both variables/operands. For example: If I have x = 01000001(Decimal:65) and y = 00100011(Decimal:35) and I do the operation x&y my result will be 00000001(Decimal:1). Both bits have to have a 1 for the result to be a 1.

3. Preforming the one's compliment of the variables "int x" and "int y" will result in inverting the bits/data that is held in those variables. Then taking the results of ~X and ~Y and preform the & opperation will produce the ouput of a NOR operation. 
*/
int bitNor(int x, int y) {
  return (~x & ~y);
}


/* 
 * fitsShort - return 1 if x can be represented as a 
 *   16-bit, two's complement integer.
 *   Examples: fitsShort(33000) = 0, fitsShort(-32768) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 1
 */
/*
1. Shift x to left 16 bits to clear out unnessacry bits. 
2. Then shift right 16 bits and XOR the bits
3. Then not all the bits to get 1
*/
int fitsShort(int x) {
  return !(x << 16 >> 16 ^ x);
}


/* 
 * thirdBits - return word with every third bit (starting from the LSB) set to 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 1
 */
int thirdBits(void) { //1001001
  int mask = 0x49; //Set mask equal to the hex of 73
  mask = (mask << 9) + 0x49; //Shift mask 9 bits and add the hex of 73
  mask = (mask << 9) + 0x49; //Shift mask 9 bits and add the hex of 73
  mask = (mask << 9) + 0x49; //Shift mask 9 bits and add the hex of 73
  return (mask);
}


/* 
 * anyEvenBit - return 1 if any even-numbered bit in word set to 1
 *   Examples anyEvenBit(0xA) = 0, anyEvenBit(0xE) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 2
 */
/*
Created 32 bit mask and used the & opperator to return the value of evenbit
*/
int anyEvenBit(int x) {
  int mask = 0x55; //Set maks equal to the hex of 85
  mask = (mask << 8) + 0x55; //Shift mask 8 bits and add the hex of 85
  mask = (mask << 8) + 0x55; //Shift mask 8 bits and add the hex of 85
  mask = (mask << 8) + 0x55; //Shift mask 8 bits and add the hex of 85
  return !!(x & mask); //AND X and the result of Mask then double NOT the result it to get the inverse.
}


/* 
 * copyLSB - set all bits of result to least significant bit of x
 *   Example: copyLSB(5) = 0xFFFFFFFF, copyLSB(6) = 0x00000000
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
/*
Shift X Left 31 bits then shift x again 31 bits right.
*/
int copyLSB(int x) {
  return (x << 31 >> 31);
}


/* 
 * implication - return x -> y in propositional logic - 0 for false, 1
 * for true
 *   Example: implication(1,1) = 1
 *            implication(1,0) = 0
 *   Legal ops: ! ~ ^ |
 *   Max ops: 5
 *   Rating: 2
 */
/*
By flipping the x the x value and then ORing with the Y.
*/
int implication(int x, int y) {
    return ((!x)|y);
}


/* 
 * bitMask - Generate a mask consisting of all 1's 
 *   lowbit and highbit
 *   Examples: bitMask(5,3) = 0x38
 *   Assume 0 <= lowbit <= 31, and 0 <= highbit <= 31
 *   If lowbit > highbit, then mask should be all 0's
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */ 
/*
1. Shift highbit left by 2, then add the binary ones compliment of zero to the highbit result.
2. Then shift the highbit result right and left by the size of lowbit. 
*/
int bitMask(int highbit, int lowbit) {
  return (((2 << highbit) + ~0) >> lowbit << lowbit);
}


/*
 * ezThreeFourths - multiplies by 3/4 rounding toward 0,
 *   Should exactly duplicate effect of C expression (x*3/4),
 *   including overflow behavior.
 *   Examples: ezThreeFourths(11) = 8
 *             ezThreeFourths(-9) = -6
 *             ezThreeFourths(1073741824) = -268435456 (overflow)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 3
 */
int ezThreeFourths(int x) {
  int mask;
  int sign; 
  int bias;
  int divFour;
  x = ((x << 1) + x); //Shift X to the right by one. Then add the bit shift result to X
  mask = ((1 << 2) + ~0);
  sign = x >> 31;
  bias = mask & sign; //To get the bias AND the mask and the sign
  divFour = ((x + bias) >> 2); //Combine the bias with the result and then right shift by two
  return divFour;
}


/*
 * satMul3 - multiplies by 3, saturating to Tmin or Tmax if overflow
 *  Examples: satMul3(0x10000000) = 0x30000000
 *            satMul3(0x30000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0x70000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0xD0000000) = 0x80000000 (Saturate to TMin)
 *            satMul3(0xA0000000) = 0x80000000 (Saturate to TMin)
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 3
 */
int satMul3(int x) {
    int signXMask = x >> 31; //Shift right 31 to create signbit mask
    int signX = signXMask & 0x01; //AND signMask
    int multiple12 = x << 1; //Multiply x by two
    int multiple12Sign = (multiple12 >> 31) & 0x01; //Get signbit
    int multiple13 = multiple12 + x; //X * 3
    int multiple13Sign = (multiple13 >> 31) & 0x01; //Get signbit
    int overflow = (signX ^ multiple12Sign) | (multiple12Sign ^ multiple13Sign);//Find offset to prevent overflow
    int overflowMask = (overflow << 31) >> 31;//Mask for overflow
    int overflowTrue = (~signXMask) ^ (0x01 << 31); //Check if an overflow will happen   
    return (overflowMask & overflowTrue) | ((~overflowMask) & multiple13); //Check to see if an overflow exists will return TMin or TMax, else return the bitwise value.
}

/*
 * bitParity - returns 1 if x contains an odd number of 0's
 *   Examples: bitParity(5) = 0, bitParity(7) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int bitParity(int x) {
  x ^= x >> 16; //Sift right by 16 then XOR the result
  x ^= x >> 8; //Sift right by 8 then XOR the result
  x ^= x >> 4; //Sift right by 4 then XOR the result
  x ^= x >> 2; //Sift right by 2 then XOR the result
  x ^= x >> 1; //Sift right by 1 then XOR the result
  x &= 1; //Take the result of x and do a binary AND then set it eqaul to 1.
  return x;
}


/*
 * ilog2 - return floor(log base 2 of x), where x > 0
 *   Example: ilog2(16) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 90
 *   Rating: 4
 */
/*

*/
int ilog2(int x) {
  int log = 0;
  int l = (!!( x >> 16 )) << 31 >> 31; //If most sig is in right, l is false, if in left 16 digits l is true
  log += l & 16; //AND 1 and 16 and set it eqaul to the variable
  x = x >> (l & 16); //AND 1 and 16 then right shift X
  l = (!!(x >> 8)) << 31 >> 31;   
  log += l & 8;
  x = x>> (l & 8);
  l = (!!(x >> 4)) << 31 >> 31;   
  log += l & 4;
  x = x >> (l & 4);
  l = (!!(x >> 2)) << 31 >> 31;   
  log += l & 2;
  x = x >> (l & 2);
  l = (!!(x >> 1)) << 31 >> 31;   
  log += l & 1;
  return log;
}


/*
 * trueThreeFourths - multiplies by 3/4 rounding toward 0,
 *   avoiding errors due to overflow
 *   Examples: trueThreeFourths(11) = 8
 *             trueThreeFourths(-9) = -6
 *             trueThreeFourths(1073741824) = 805306368 (no overflow)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int trueThreeFourths(int x)
{
  int num = x >> 31; //Binary Shift right 31
  int remainder = x & 3; // AND  with 3 to get the remainder of x
  x = x >> 2; //Binary shift right 2
  x = x + (x << 1); //Shift right 1 and then add the result to x
  x = x + ((remainder + (remainder << 1) + (num & 3)) >> 2); //Shift and combine remainder with num and return to x variable
  return x;
}


/*
 * Extra credit
 */
/* 
 * float_neg - Return bit-level equivalent of expression -f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned float_neg(unsigned uf) {
 return 2;
}


/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) 
{
  //Sign_bit = 0 or 1, E = exp+127, frac = 23 bits of x
  unsigned sign_bit, frac, exponent = 150; 
  unsigned temp, b = 2; 
  unsigned hi, lo;

  if (x == 0) return 0;
  sign_bit = (x & 0x80000000);
  frac = (sign_bit) ? (-x) : (x);
  temp = frac;
  while (temp & 0xff000000) 
  {
      //Round
      temp = (frac + (b / 2)) / (b);
      b <<= 1;
      exponent++;
  }
  while (temp <= 0x007fffff) 
  {
      temp <<= 1;
      exponent--;
  }
  if (frac & 0xff000000) 
  {
      b = 1 << (exponent - 150);

      temp = frac / b;
      lo = frac % b;
      hi = b - lo;

      //if temp is closer to fraction/b than fraction/b + 1, or its odd, round up
      if ((hi < lo) || ((hi == lo) & temp))
          ++temp;
      frac = temp;
  } 
  else 
  {
  while (frac <= 0x007fffff)
      frac <<= 1;
  }
  return (sign_bit) | (exponent << 23) | (frac & 0x007fffff);
}


/* 
 * float_twice - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_twice(unsigned uf) {
  return 2;
}