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

unsigned int do_div (unsigned int a, unsigned int b) { return a/b; }

int main ()
/*****/

{
  STOP_WATCHDOG;
  START_TIME;  // Set P3[0]

  unsigned int a = 65534;
  unsigned int b = 17;
  unsigned int e = 10000;
  unsigned int f = 0;
  unsigned int c ;
  unsigned int g ;
  c = do_div(a, b);
  g = do_div (e, f);

  END_TIME;  // Clear P3[0]
  printf("a is %u,  b is %u and c is %u \n", a, b, c);
  printf("e is %u,  f is %u and g is %u \n", e, f, g);
  DHRYSTONE_DONE;

}

