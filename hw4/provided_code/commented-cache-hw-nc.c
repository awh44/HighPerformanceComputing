#include <stdio.h>
#include <time.h>
#define CACHE_MIN (1024)
#define CACHE_MAX (1024*1024)
#define SAMPLE 20

int x[CACHE_MAX];

double get_seconds()
 {
  clock_t t;
  t = clock();
  return (double) t/ (double) CLOCKS_PER_SEC;
 }

void main()
 {
  int register i, index, stride, limit, temp;
  int steps, tsteps, csize;
  double sec0, sec;

  for (csize = CACHE_MIN; csize <= CACHE_MAX; csize = csize * 2)
  for (stride = 1; stride <= csize/2; stride = stride * 2)
   {
    sec = 0;
    limit = csize - stride + 1;

    steps = 0;
    do
     {
      sec0 = get_seconds();
      for (i = SAMPLE * stride; i != 0; i = i - 1)
       for (index = 0; index < limit; index = index + stride)
        x[index] = x[index] + 1;
      steps = steps + 1;
      sec = sec + (get_seconds() - sec0);
     }
    while (sec < 1.0);

    tsteps = 0;
    do
     {
      sec0 = get_seconds();
      for (i = SAMPLE * stride; i != 0; i = i - 1)
       for (index = 0; index < limit; index = index + stride)
        temp = temp + index;
      tsteps = tsteps + 1;
      sec = sec - (get_seconds() - sec0);
     }
    while (tsteps < steps);

    printf("Size:%7d Stride:%7d read+write:%f ns\n",
    csize * sizeof(int), stride * sizeof(int),
    (double) sec*1e9/(double)(steps*SAMPLE*stride*((limit-1)/stride+1)));
   }
 }
