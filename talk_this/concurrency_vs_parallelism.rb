Concurrency

Thread 1 ----------XXXXXXXXXXXX------XX----X-XXXXXX-
Thread 2 XXXXXXXXXX----XXXXXX--XXXXXXXXXXXX-XXX----X
Thread 3 XXXXXXXXXXXXXX------XXXXXXXX--XXXXXX--XXXXX

Parallelism

Thread 1 -------------------------------------------
Thread 2 -------------------------------------------
Thread 3 -------------------------------------------

Is Parallelism better than Concurrency ?
#https://www.toptal.com/ruby/ruby-concurrency-and-parallelism-a-practical-primer

----------------------------------------------------------------------------------------------------------------------------------

Global Intepreter Lock(GIL)

GIL prevents multiple Ruby threads from executing at the same time.
GIL is implemented in MRI(Matz Ruby Interpreter)

Thread 1          XXXXXXX(Acq GIL)-------  				XXXXXXX
Thread 2 (Acq GIL)------- 				XXXXXXX 				XXXXXXX
Thread 3				  XXXXXXX         XXXXXXX(Acq GIL)-------

How to achieve true Parallelism in Ruby ?

- Use Jruby which runs on JVM and supports true parallelism
- Use Rubinius

If GIL is there, is there any benefit of using Threads ?