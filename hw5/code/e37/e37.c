#include <x86intrin.h>

//void addindex(float *x, int n)
// {
//  int i;
//  for (i = 0; i < n; i++)
//   x[i] = x[i] + i;
// }

// n a multiple of 4, x is 16-byte aligned
//void addindex_vec(float *x, int n)
// {
//  __m128 index, x_vec;
//  int i;
//
//  for (i = 0; i < n; i+=4)
//   {
//    x_vec = _mm_load_ps(x+i); // load 4 floats
//    index = _mm_set_ps(i+3, i+2, i+1, i); // create vector with indexes
//    x_vec = _mm_add_ps(x_vec, index); // add the two
//    _mm_store_ps(x+i, x_vec); // store back
//   }
// }

// n a multiple of 4, x is 16-byte aligned
//void addindex_vec(float *x, int n) {
//  __m128 x_vec, init, incr;
//
//ind  = _mm_set_ps(3, 2, 1, 0);
//incr = _mm_set1_ps(4);
//for (int i = 0; i < n; i+=4) {
//    x_vec = _mm_load_ps(x+i);              // load 4 floats
//    x_vec = _mm_add_ps(x_vec, ind);        // add the two
//    ind   = _mm_add_ps(ind, incr);         // update ind
//    _mm_store_ps(x+i, x_vec);              // store back
//  }
//}

#define SIZE 1024

float __attribute__((aligned (16))) x[SIZE];
__m128 x_vec, ind, incr;
int dx();

int main(int argc, char *argv[])
 {
  int i, n;

  ind  = _mm_set_ps(3, 2, 1, 0);
  incr = _mm_set1_ps(4);

  for (i = 0; i < SIZE; i++)
   {
    x[i] = (float) i;
   }

  for (i = 0; i < SIZE; i+=4)
   {
    x_vec = _mm_load_ps(x+i);              // load 4 floats
    x_vec = _mm_add_ps(x_vec, ind);        // add the two
    ind   = _mm_add_ps(ind, incr);         // update ind
    _mm_store_ps(x+i, x_vec);              // store back
   }

  n = dx(x);
  return(n);
 }
