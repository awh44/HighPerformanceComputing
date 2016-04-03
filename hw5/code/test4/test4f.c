#define SIZE 1024
  
int __attribute__((aligned (16))) a[SIZE], b[SIZE];
int dx();

int main(int argc, char *argv[])
 {
  int i, n;

  for (i = 0; i < SIZE; i++)
   {
    a[i] = i;
    b[i] = 1;
   }
  
  for (i = 0; i < SIZE; i++)
   {
    a[i] = a[i] + b[i];
   }

  n = dx(a[0]);
  return(n);
 }

