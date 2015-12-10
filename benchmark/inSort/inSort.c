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
#include <stddef.h>

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

static void insertion_sort(int *a, const size_t n) {
  size_t i, j;
  int value;
  for (i = 1; i < n; i++) {
    value = a[i];
    for (j = i; j > 0 && value < a[j - 1]; j--) {
      a[j] = a[j - 1];
    }
    a[j] = value;
  }
}

/// CHECK IF YOU CAN IMPLEMENT THE HORNER's METHOD IN TI's DOCS
void run_bm() {
  int a[] = {1, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65534};
  int b[] = {65534, 32767, 16383, 8191, 4095, 2047, 1023, 511, 255, 127, 63, 31, 15, 7, 3, 1, 1};
  int c[] = {127, 63, 511, 8191, 1023, 65534, 3, 7, 32767, 2047, 31, 4095, 15, 16383, 1, 255, 1};

  insertion_sort(a, sizeof a / sizeof a[0]);
  insertion_sort(b, sizeof b / sizeof b[0]);
  insertion_sort(c, sizeof c / sizeof c[0]);
}

int main () {
  STOP_WATCHDOG;
  printf ("Execution starts" );
  START_TIME;  // Set P3[0]

  run_bm();

  END_TIME;  // Clear P3[0]
  printf ("Execution ends\n");
  DHRYSTONE_DONE;

}

