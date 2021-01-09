def hello_world
	puts 'Hello World'
end

# Profiling
require 'ruby-prof'
report = RubyProf.profile do
	hello_world
end
printer = RubyProf::GraphPrinter.new(report)
printer.print(File.new("hello_world_profiling.txt",  "w+"), :min_percent=>2)
