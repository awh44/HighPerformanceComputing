#define SIZE 1024

float __attribute__((aligned (16))) a[SIZE], b[SIZE];
int dx();

int main(int argc, char *argv[])
 {
  int i, n;

  for (i = 0; i < SIZE; i++)
   {
    a[i] = (float) i;
    b[i] = 100.0;
   }

  for (i = 0; i < SIZE; i++)
   {
    a[i] = ((b[i] > a[i]) ? b[i] : a[i]);
   }

  n = dx(a[0]);
  return(n);
 }

