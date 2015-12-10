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
#include <string.h>
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

  /* fwrite(d, 1, rl, stdout); */
//  int i;
//  for ( i = 0; i < rl; i++)
//  {
//    printf("%c", *(d+i));
//  }

  // NO NEED TO DECODE
  //int ocl = rle_decode(oc, d, rl);
  //fwrite(oc, 1, ocl, stdout);
//  for ( i = 0; i < ocl; i++)
//  {
//    printf("%c", *(oc+i));
//  }

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

const char *o = "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWWWWW";

int rle_encode(char *out, const char *in, int l)
{
  int dl, i;
  char cp, c;

  for(cp=c= *in++, i = 0, dl=0; l>0 ; c = *in++, l-- ) {
    if ( c == cp ) {
      i++;
      if ( i > 255 ) {
        *out++ = 255;
        *out++ = c; dl += 2;
        i = 1;
      }
    } else {
      *out++ = i;
      *out++ = cp; dl += 2;
      i = 1;
    }
    cp = c;
  }
  *out++ = i; *out++ = cp; dl += 2;
  return dl;
}

int rle_decode(char *out, const char *in, int l)
{
  int i, tb;
  char c;

  for(tb=0 ; l>0 ; l -= 2 ) {
    i = *in++;
    c = *in++;
    tb += i;
    while(i-- > 0) *out++ = c;
  }
  return tb;
}

/// CHECK IF YOU CAN IMPLEMENT THE HORNER's METHOD IN TI's DOCS
void run_bm()
{
  char *d = malloc(2*strlen(o));
  char *oc = malloc(strlen(o));

  int rl = rle_encode(d, o, strlen(o));

  free(d); free(oc);
}

int main ()
/*****/

{
  STOP_WATCHDOG;
  START_TIME;  // Set P3[0]

  run_bm();

  END_TIME;  // Clear P3[0]
  printf("RLE DONE \n");
  DHRYSTONE_DONE;

}

