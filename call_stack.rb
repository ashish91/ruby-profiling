def parent
	sleep 5
	child #2
end

def child
	sleep 2
end

#7

# Profiling
require 'ruby-prof'
profile = RubyProf.profile do
	parent
end
printer = RubyProf::GraphPrinter.new(profile)
printer.print(File.new("call_stack_profiling.txt",  "w+"), :min_percent=>2)
