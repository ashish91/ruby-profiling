def threaded_call
	threads = []
	2.times { |i|
	  threads << Thread.new { parent(i) }
	}
	threads.each(&:join)
end

def parent(i)
	num = 100000
	100000.times do |t|
		puts "Parent Thread #{i}"
		num -= t
	end
	child(i)
end

def child(i)
	num = 10000
	100000.times do |t|
		puts "Child Thread #{i}"
		num -= t
	end
end

# Profiling
require 'ruby-prof'
profiler = RubyProf::Profile.new

excluded_methods =[[Integer, :times], [Float, :to_s], [Kernel, :puts], [IO, :puts], [IO, :write]]
excluded_methods.each do |method|
	profiler.exclude_methods!(method[0], method[1])
end
report = profiler.profile do
	threaded_call
end
printer = RubyProf::GraphPrinter.new(report)
printer.print(File.new("threaded_call_stack_profiling.txt",  "w+"), :min_percent=>2)
