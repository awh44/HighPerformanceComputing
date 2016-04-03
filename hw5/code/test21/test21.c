#define SIZE 1024

float __attribute__((aligned (16))) a[SIZE], b[SIZE];
int dx();

int main(int argc, char *argv[])
 {
  int i, n;
  float y __attribute__ ((aligned (16)));

  for (i = 0; i < SIZE; i++)
   {
    a[i] = (float) i;
    b[i] = 1.0;
   }

  y = 0.0;
  for (i = 0; i < SIZE; i++)
   {
    y = y + a[i];
   }

  n = dx(y);
  return(n);
 }

