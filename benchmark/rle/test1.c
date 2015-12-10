#include <stdio.h>
#include <stdlib.h>
#include <string.h>

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
  int i, j, tb;
  char c;

  for(tb=0 ; l>0 ; l -= 2 ) {
    i = *in++;
    c = *in++;
    tb += i;
    while(i-- > 0) *out++ = c;
  }
  return tb;
}



int main()
{
  char *d = malloc(2*strlen(o));
  char *oc = malloc(strlen(o));

  int rl = rle_encode(d, o, strlen(o));
  //fwrite(d, 1, rl, stdout);

  int ocl = rle_decode(oc, d, rl);
  //fwrite(oc, 1, ocl, stdout);
  int i;
  for ( i = 0; i < ocl; i++)
  {
    printf("%c", *(oc+i));
  }

  free(d); free(oc);
  return 0;
}
