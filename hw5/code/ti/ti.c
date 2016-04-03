#define SIZE 1000
#include <stdio.h>
#include <stdlib.h>
#include <xmmintrin.h>

float inner(float a[], float b[], int n);
float vinner(float a[], float b[], int n);
float vinner2(float a[], float b[], int n);

int main(int argc, char *argv[])
 {

  float __attribute__((aligned (16))) a[SIZE], b[SIZE];
  float s0, s1, s2;
  int i,n;

  for (i = 0; i < SIZE; i++)
   {
    a[i] = i;
    b[i] = 1;
   }

  s0 = inner(a,b,n);
  printf("s = %g\n",s0);

  s1 = vinner1(a,b,n);
  printf("vector s = %g\n",s1);

  s2 = vinner2(a,b,n);
  printf("vector2 s = %g\n",s2);
 }

float inner(float a[], float b[], int n)
 {
  int i;
  float s;

  s = 0.0;
  for (i = 0; i < SIZE; i++)
   s += a[i] * b[i];
  return s;
 }

float vinner(float a[], float b[], int n)
 {
  int i,nb;
  float s;
  float temp[4] __attribute__((aligned(16)));
  __m128 v1, v2, acc;

  nb = n - (n % 4);
  acc = _mm_xor_ps(acc,acc);
  for (i = 0; i < nb; i += 4)
   {
    v1 = _mm_load_ps(&a[i]);
    v2 = _mm_load_ps(&b[i]);
    v2 = _mm_mul_ps(v1,v2);
    acc = _mm_add_ps(acc,v2);
   }
  _mm_store_ps(temp,acc);
  printf("%g %g %g %g\n",temp[0],temp[1],temp[2],temp[3]);
  s = 0.0;
  for (i = nb; i < n; i++)
   s += a[i] * b[i];
  s = s + temp[0] + temp[1] + temp[2] + temp[3];
  printf("s = %g\n",s);
  return s;
 }

float vinner2(float a[], float b[], int n)
 {
  int i,nb;
  float s;
  float temp[4] __attribute__((aligned(16)));
  __m128 v1, v2, acc;

  nb = n - (n % 4);
  acc = _mm_xor_ps(acc,acc);
  for (i = 0; i < nb; i += 4)
   {
    v1 = _mm_load_ps(&a[i]);
    v2 = _mm_load_ps(&b[i]);
    v2 = _mm_mul_ps(v1,v2);
    acc = _mm_add_ps(acc,v2);
   }
  v1 = _mm_shuffle_ps(acc,acc,_MM_SHUFFLE(1,0,3,2));
  v1 = _mm_add_ps(v1,acc);
  v2 = _mm_shuffle_ps(v1,v1,_MM_SHUFFLE(2,3,0,1));
  v2 = _mm_add_ps(v2,v1);
  _mm_store_ss(&s,v2);
  for (i = nb; i < n; i++)
   s += a[i] * b[i];
  return s;
 }
