#include <stdio.h>
#include <time.h>
#define CACHE_MIN (1024)
#define CACHE_MAX (1024*1024)
#define SAMPLE 20

int x[CACHE_MAX];

double get_seconds()
{
	clock_t t;
	//get the number of clock ticks since the program was started
	t = clock();
	//divie the number of ticks by the number of clocks per second to get
	//the numbrer of seconds since the program began
	return (double) t/ (double) CLOCKS_PER_SEC;
}

void main()
{
	//Declare the variables to be used. Give the compiler hints that i, index,
	//stride, limit, and temp can/should be held in registers, rather than in
	//memory
	int register i, index, stride, limit, temp;
	int steps, tsteps, csize;
	double sec0, sec;

	//Perform experiments assuming different cache sizes - start at CACHE_MIN,
	//double the size every iteration, and stop when the size is greater than
	//CACHE_MAX
	for (csize = CACHE_MIN; csize <= CACHE_MAX; csize = csize * 2)
	{
		//Use different stride sizes to traverse. Start at 1, then double
		//the stride every iteration, stopping when the stride size is greater
		//than half the currently used cache size (csize).
		size_t num = 0;
		for (stride = 1; stride <= csize/2; stride = stride * 2)
		{
			//Set the total time taken to 0 seconds
			sec = 0;

			//The limit is the number of times the innermost loop in the
			//following code will execute. It ensures the loops stop
			//one stride before the end of the array
			limit = csize - stride + 1;

			//Indicate that the following loop has not executed at all yet by
			//assigning here
			steps = 0;

			//This loop will go through the array x and perform numerous
			//samples. At the end, the step variable will contain how many times
			//this loop executed and sec will contain the total time taken to do
			//all iterations.
			do
			{
				//get the current number of seconds since the program began
				sec0 = get_seconds();

				//Perform the following loop for a particular number of samples.
				//Particularly, we want the total number of accesses to x to be
				//the same for every stride size, but the number of times the
				//inner loop will execute for increasing stride sizes will
				//decrease, so instead, multiply SAMPLE by stride to get back to
				//the same number of total samples.
				for (i = SAMPLE * stride; i != 0; i = i - 1)
				{
					//In this loop, x will be accessed using the index variable.
					//This means that when index is "incremented" using index =
					//index + stride, the access to x will be strided (i.e.,
					//stride - 1 elements will be skipped very iteration)
					for (index = 0; index < limit; index = index + stride)
					{
						//Access the x array in main memory once for a read, on
						//the right hand side of the expression, and once for a
						//write, on the left hand side
						x[index] = x[index] + 1;
					}
				}

				//Increase the number of times the samples have been taken
      			steps = steps + 1;

				//Subtract the original number of seconds since the program
				//began to get the total number of seconds spend in this
				//iteration of the loop
      			sec = sec + (get_seconds() - sec0);
     		} while (sec < 1.0); //Continue sampling until the total time is >= 1

			//Indicate that the number of steps in this second loop is starting
			//off as zero
			tsteps = 0;

			//This loop will perform the same thing as above, except it will
			//use a temporary variable to hold the sums in the inner loop, it
			//will subtract the time taken from sec, and it will do it while tsteps
			//is less than the original number of steps. This should have the
			//effect of the sec variable accounting for only the extra time
			//taken due to the read and write accesses, because temp is a
			//temporary variable that should, theoretically, be held in a
			//register, but the time for the actual loop code itself should be
			//the same, for the same number of steps, and it will be subtracted
			//out.
			do
			{
				//The comments for the following code should all be the same as
				//for above, except where a few are given.
				sec0 = get_seconds();
				for (i = SAMPLE * stride; i != 0; i = i - 1)
					for (index = 0; index < limit; index = index + stride)
					{
						//Here, access a temporary variable (which should be
						//held in a register) for both a read and a write,
						//instead of an array in memory, like above
						temp = temp + index;
					}
				tsteps = tsteps + 1;

				//This time, subtract the time taken for this loop iteration, so
				//at the end, essentially only the time for memory accesses should
				//remain in sec
				sec = sec - (get_seconds() - sec0);
			} while (tsteps < steps); //Execute while tsteps is < steps. This
			                          //has the effect of making this loop
			                          //execute exactly the same number of times
			                          //as the upper loop

			//Print out the information on the samples. First, print out the
			//assumed cache size (in bytes), the stride length (in bytes), and
			//finally, the average time for each individual read and write, in
			//nanoseconds (1e-9 s)
			/*
			printf("Size:%7d Stride:%7d read+write:%f ns\n",
				csize * sizeof(int), stride * sizeof(int),
			*/
			printf("%f, ",
				(double) sec*1e9/(double)(steps*SAMPLE*stride*((limit-1)/stride+1)));
			num++;
		}

		while (num < 19)
		{
			printf("0, ");
			num++;
		}
		printf("0;\n");
	}
}
