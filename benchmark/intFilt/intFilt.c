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
//#include "test_input.h"
//#include "test_input_shuffled.h"
#include "test_input_short.h"

float coeff [] = {0, 0.3612, 0.5 ,0.3612};

int size = 7;

int domult (unsigned int a, unsigned int b) {return a* b;}

void doFilt(int * output) {
  int i = 0;

  for (i = 0; i < size; i ++)
  {
    //printf("i is %d \n", i);
    int one   = domult (coeff[0], input[i]);
    int two   = domult (coeff[1], input[i + 1]);
    int three = domult (coeff[2], input[i + 2]);
    int four  = domult (coeff[3], input[i + 3]);
    output[i] = one + two + three + four;
  }
}

int main ()
/*****/

{
  STOP_WATCHDOG;
  START_TIME;  // Set P3[0]

  int* output = (int *) malloc (size*sizeof(int));

  int i = 0;

  doFilt(output);

//  for (i = 0; i < size; i++)
//    printf("%d \n", output[i]);

  END_TIME;  // Clear P3[0]
  DHRYSTONE_DONE;

}

