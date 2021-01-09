Thread(Kernel)

Thread is a lightweight process that shares memory. Threads can achieve parallelism using multiple cores
provided they are not blocking for resources on each other.

Threads scheduling and creation is managed by OS.

# Thread program
threads = []
10.times {
	# Creates a new Thread
  threads << Thread.new { puts 1 }
}
# Blocks caller thread until all threads are executed
threads.each(&:join)
# End

----------------------------------------------------------------------------------------------------------------------------------

Fiber

Fiber is a lightweight worker which is stopped and started by the user.
Just like a thread multiple fibers can be spawned and run concurrently,
however the scheduling is done by the user instead of the VM.

# Fiber program
fiber = Fiber.new do
	# Stops fiber
  Fiber.yield 1
  2
end

# Starts fiber
puts fiber.resume
# Starts fiber
puts fiber.resume
# Starts fiber
puts fiber.resume
# End

# Output
1
2
FiberError: dead fiber called
