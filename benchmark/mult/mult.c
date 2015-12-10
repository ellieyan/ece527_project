/*
 ****************************************************************************
 *
 *                   "DHRYSTONE" Benchmark Program
 *                   -----------------------------
 *
 *  Version:    C, Version 2.1
 *
 *  File:       dhry_1.c (part 2 of 3)
 *
 *  Date:       May 25, 1988
 *
 *  Author:     Reinhold P. Weicker
 *
 ****************************************************************************
 */

#include <stdint.h>
#include <stdio.h>
//#include <stdlib.h>
#include "dhry.h"
#include "omsp_func.h"

Rec_Pointer     Ptr_Glob,
                Next_Ptr_Glob;
int             Int_Glob;
Boolean         Bool_Glob;
char            Ch_1_Glob,
                Ch_2_Glob;
int             Arr_1_Glob [50];
int             Arr_2_Glob [50] [50];

extern char     *malloc ();
//Enumeration     Func_1 ();
//  /* forward declaration necessary since Enumeration may not simply be int */

#ifndef REG
        Boolean Reg = false;
#define REG
        /* REG becomes defined as empty */
        /* i.e. no register variables   */
#else
        Boolean Reg = true;
#endif

/* variables for time measurement: */

#ifdef TIMES
struct tms      time_info;
extern  int     times ();
                /* see library function "times" */
#define Too_Small_Time (2*HZ)
                /* Measurements should last at least about 2 seconds */
#endif
#ifdef TIME
extern long     time();
                /* see library function "time"  */
#define Too_Small_Time 2
                /* Measurements should last at least 2 seconds */
#endif
#ifdef MSC_CLOCK
extern clock_t	clock();
#define Too_Small_Time (2*HZ)
#endif

long            Begin_Time,
                End_Time,
                User_Time;
float           Microseconds,
                Dhrystones_Per_Second;

/// CHECK IF YOU CAN IMPLEMENT THE HORNER's METHOD IN TI's DOCS

unsigned long long domult (unsigned int a, unsigned int b) {return (unsigned long long) a* b;}

int domult_int (int a, int b) {return a* b;}

int main ()
/*****/

{
  STOP_WATCHDOG;
  START_TIME;  // Set P3[0]

//   unsigned long A = 1099013;
//   unsigned long B = 19307;
//   unsigned long long C = domult(A, B);

   //int a = 44365;
   int a = 109901;
   int b = 19300;
   int c = domult_int (a, b); // this one excites a longer path
   //int c = a*b; // this one excites a longer path


  END_TIME;  // Clear P3[0]
  //printf("a is %d, b is %d, and c is %d \n", a, b, c);
  //printf("a is %lu  and b is %lu  and c is %llu \n", A, B, C);
  DHRYSTONE_DONE;
}

