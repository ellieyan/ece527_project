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

#include "test_input.h"

//static int input_buf[] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
//int size = 32;
int size1 = 200;
int size2 = 17;

/// CHECK IF YOU CAN IMPLEMENT THE HORNER's METHOD IN TI's DOCS
int run_bm()
{
  int i = 0;
  int sum1 = 0;
  int sum2 = 0;

  for (i = 0; i < size1; i++)
  {
    sum1 += input_buf1[i];
  }
  int avg1 = sum1/size1;


  for (i = 0; i < size2; i++)
  {
    sum2 += input_buf2[i];
  }
  int avg2 = sum2/size2;

  int avg = (avg1 + avg2) /2;
  return avg;
}

int main ()
/*****/

{
  STOP_WATCHDOG;
  //printf ("Execution starts" );
  START_TIME;  // Set P3[0]

  int avg = run_bm();

  END_TIME;  // Clear P3[0]
  //printf ("Execution ends\n");
  DHRYSTONE_DONE;

}

