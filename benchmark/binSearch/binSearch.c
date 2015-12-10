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
#define DUMMY -1

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

typedef int Object;
//#include "input.h"

Object a[] = {1, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65534};

void assert(int value)
{
  if (!value)
  {
    printf("Assertion FAILED \n");
    exit(0);
  }
}

int cmpObject(Object* pa, Object *pb)
{
  Object a = *pa;
  Object b = *pb;
  if (a < b) return -1;
  if (a == b) return 0;
  if (a > b) return 1;
  //assert(0);
}

int bsearch(Object Array[], int n, Object *KeyPtr,
    int (*cmp)(Object *, Object *),
    int NotFound)
{

  //printf("Search starts \n");
  unsigned left = 1, right = n; /* `unsigned' to avoid overflow in `(left + right)/2' */

  if ( ! (Array && n > 0 && KeyPtr && cmp))
    return NotFound; /* invalid input or empty array */

  while (left < right)
  {
    unsigned m = (left  +  right) / 2;

    if (cmp(Array + m, KeyPtr) < 0)
      left = m + 1;
    else
    {
      /* assert(right != m) or infinite loop possible */
      assert(right !=m );
      right = m;          /* a[left] <= *KeyPtr <= a[m] or *KeyPtr not in Array */
    }
  }
  /* assert(left == right) */
  //printf("Search end \n");
  return (cmp(Array + right, KeyPtr) == 0) ? right : NotFound;
}

void run_bm()
{

  int n = sizeof(a)/sizeof(*a) - 1;
  const int NotFound = -1;

  /* key not in Array */
  Object key = 0;
  int index = bsearch(a, n, &key, cmpObject, NotFound);
  //printf("%d \n", index);

  key = 65535;
  index = bsearch(a, n, &key, cmpObject, NotFound);
  //printf("%d \n", index);

  // Key in ARRAY
  key = 255;
  index = bsearch(a, n, &key, cmpObject, NotFound);
  //printf("%d \n", index);

  index = bsearch(a, n, NULL, cmpObject, NotFound);
  //printf("%d \n", index);

  // Long array coverage// not part of binSearching
  int a = 1;
  int b = 32767;
  int c = a + b;

}

int main ()
/*****/

{
  STOP_WATCHDOG;
  printf ("Execution starts" );
  START_TIME;  // Set P3[0]

  run_bm();

  END_TIME;  // Clear P3[0]
  printf ("Execution ends\n");
  DHRYSTONE_DONE;

}

