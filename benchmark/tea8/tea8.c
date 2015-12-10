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


void encrypt (short* v, short* k) {
    short v0=v[0], v1=v[1],  i;           /* set up */
    uint16_t delta=0x0A00, sum = 0;                     /* a key schedule constant */
    short k0=k[0], k1=k[1], k2=k[2], k3=k[3];   /* cache key */
    for (i=0; i < 8; i++) {                       /* basic cycle start */
        sum += delta;
        v0 += ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
        v1 += ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
    }                                              /* end cycle */
    v[0]=v0; v[1]=v1;
}

void decrypt (short* v, short* k) {
    short v0=v[0], v1=v[1], sum=0x5000, i;    /* set up                  */
    short delta=0x0A00;                       /* a key schedule constant */
    short k0=k[0], k1=k[1], k2=k[2], k3=k[3]; /* cache key               */
    for (i=0; i<8; i++) {                     /* basic cycle start       */
        v1 -= ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
        v0 -= ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
        sum -= delta;
    }                                          /* end cycle */
    v[0]=v0; v[1]=v1;
}

void run_bm()
{
  short *v, *k;
  v = (short *) malloc (2* sizeof(short));
  k = (short *) malloc (4* sizeof(short));
  v[0] = 0x00; v[1] = 0xff;
  k[0] = 0x77; k[1] = 0x8c;
  k[2] = 0xae; k[3] = 0x38;
  //printf("v0 is %x and v1 is %x \n", v[0], v[1]);
  encrypt(v,k);
  //printf("v0 is %x and v1 is %x \n", v[0], v[1]);
  decrypt(v,k);
  //printf("v0 is %x and v1 is %x \n", v[0], v[1]);
}

int main ()
/*****/

{
  STOP_WATCHDOG;
  //printf ("Execution starts \n");
  START_TIME;  // Set P3[0]

  run_bm();

  END_TIME;  // Clear P3[0]
  //printf ("Execution ends\n");
  DHRYSTONE_DONE;

}

