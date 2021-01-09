What is Profiling ?

- Profiling is identifying bottlenecks in your program by measuring time/memory taken by individual components of your program.

# My Program
start = Time.now
call_lengthy_task
puts "Time taken by call_lengthy_task: #{Time.now - start}"

start = Time.now
call_small_task
puts "Time taken by call_small_task: #{Time.now - start}"
# END

----------------------------------------------------------------------------------------------------------------------------------

ruby-prof

stackprof
memory_profiler
scout_apm
#https://www.toptal.com/ruby/ruby-concurrency-and-parallelism-a-practical-primer

- A gem to profile ruby programs to identify methods taking most time.
- It supports Multi threaded programs.

Overview: https://ruby-prof.github.io
Gem: https://rubygems.org/gems/ruby-prof (v0.18)

Using this we will profile

- hello_world 				-> Understand basic structure of ruby-profile output
- call_stack 					-> How to identify most time consuming methods
- threaded_call_stack -> How to profile Multi threaded scenario